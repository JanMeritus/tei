declare variable $FC := 1;
declare variable $FS := 1;
declare variable $Spine := 0;
declare variable $BC := 1;
declare variable $BS := 1;

declare variable $FrontPart := 3;
declare variable $FrontPart_start := 0;
declare variable $MainPart_page := 29;
declare variable $MainPart_folio := (0) * 2;

declare function local:folio($start, $end)
{
for $b in $start to $end
return ($b, $b)
};

declare variable $MainPart_start := 1;
declare variable $MainPart_miss := 0;
declare variable $BackPart := 0;
declare variable $BackPart_start := 0;

declare variable $BaseUrl := 'http://imageserver.mzk.cz/mzk03/001/039/080/2619312462/';

(:File Name:)
declare variable $Prefix := 'MAPA_';
declare variable $Prefix_front := 'A';
declare variable $Prefix_back := 'Z';
declare variable $Prefix_MainPart := 'Mapa ';
declare variable $Suffix := '';
declare variable $Extension := '/ImageProperties.xml';
declare variable $Length := 3;
declare variable $Length_0 := for $a in 1 to $Length return '0';
declare variable $Format := string-join($Length_0);

declare function local:miss($a as xs:integer, $b as xs:integer) as xs:string
{
if ($a >= $b) then 
for $b in $a+1 
return string($b)
else
for $b in $a
return string($b)
};

declare variable $romanAlpha as xs:string* :=
("M", "CM", "D", "CD", "C", "XC", "L", "XL","X","IX", "V", "IV","I");

declare variable $romanNums as xs:integer* :=
(1000,900,500,400,100,90,50,40,10,9,5,4,1);(:~
converts arabic number to a roman numeral
~:)

declare function local:number-to-roman($num as xs:integer){
if($num eq 0) then
''
else if($num gt 3999) then
fn:error(xs:QName("INVALID_ARGUMENT"),"Cannot Convert Number Larger than 3999")
else
local:recursive-roman($num,'',$romanNums)
};
(:~
Recursion Method used to calculate the roman numeral
~:)
declare function local:recursive-roman(
$num as xs:integer,
$alpha as xs:string,
$sequences as xs:integer*){
let $i := $sequences[1]
let $rom-a := $romanAlpha[fn:index-of($romanNums,$i)]
return
if($num eq 0) then (:fn:not($sequences) and:)  
$alpha
else
if($num gt $i) then
local:recursive-roman($num - $i, fn:concat($alpha,$rom-a),$sequences)
else if($num lt $i) then
local:recursive-roman($num, $alpha,fn:remove($sequences,1))
else if($num eq $i) then
fn:concat($alpha,$rom-a)
else
$alpha
};


let $facsimile :=
<facsimile xml:base="{$BaseUrl}">

{
if ($FC = 1) then 
for $a in 1
let $FC := if ($a = 1) then 'FC' else ''

return
<surface xml:id="id_{format-number($a, '00000')}">
         <desc>
            <label>{$FC}</label>
         </desc>
         <graphic url="{$Prefix_front}{format-number($a, $Format)}{$Extension}"/>
      </surface>
      else ''
}
{
if ($FS = 1) then 
for $a in 1
let $FS := if ($a = 1) then 'FS' else ''

return
<surface xml:id="id_{format-number($a+1, '00000')}">
         <desc>
            <label>{$FS}</label>
         </desc>
         <graphic url="{$Prefix_front}{format-number($a+1, $Format)}{$Extension}"/>
      </surface>
      else ''
}

{
if ($Spine = 1) then
for $a in 1
return
<surface xml:id="id_{format-number($a+2, '00000')}">
         <desc>
            <label>SP</label>
         </desc>
         <graphic url="{$Prefix_front}{format-number($a+2, $Format)}{$Extension}"/>
      </surface>

else ''
}
 
{
if ($FrontPart >= 1) then
for $a in 1 to $FrontPart
let $cislo_id := if ($Spine = 1) then number('3') else if ($FC = 1 and $FS = 1) then number('2') else if ($FC = 1) then number('1') else number('0')
return 
<surface xml:id="id_{format-number($a+$cislo_id, '00000')}">
         <desc>
            <label> {if ($a <= 8 and $a >= 1) then local:number-to-roman($a) else ($a) - 8}</label>
         </desc>
         <graphic url="{$Prefix_front}{format-number($a+$cislo_id, $Format)}{$Extension}"/>
      </surface>
      else ''
}
{
 
if ($MainPart_page >= 1) then
for $a in $MainPart_start to $MainPart_page
let $cislo_id := if ($Spine = 1) then number('3') else if ($FC = 1 and $FS = 1) then number('2') else if ($FC = 1) then number('1') else number('0')

return 
<surface xml:id="id_{format-number(($a - $MainPart_start + 1)+$cislo_id+$FrontPart, '00000')}">
         <desc>
            <label>{$Prefix_MainPart}[{$a}]</label>
         </desc>
         <graphic url="{$Prefix}{format-number(($a - $MainPart_start + 1)+$cislo_id+$FrontPart - 5, '00')}{$Extension}"/>
      </surface>
      else ''
}
{
if ($MainPart_folio >= 1) then
for $a in $MainPart_start to $MainPart_folio
let $cislo_id := if ($Spine = 1) then number('3') else if ($FC = 1 and $FS = 1) then number('2') else if ($FC = 1) then number('1') else number('0')
return
<surface xml:id="id_{format-number(($a - $MainPart_start + 1)+$cislo_id+$FrontPart, '00000')}">
         <desc>
         {for $b in local:folio($MainPart_start, $MainPart_folio)[position() = $a]
         return
            <label>{$Prefix_MainPart}{$b} {if ($a mod 2 = 0) then 'b' else 'a'}</label>}
         </desc>
         <graphic url="{$Prefix}{format-number(($a - $MainPart_start + 1)+$cislo_id+$FrontPart, $Format)}{$Extension}"/>
      </surface>
     else ''
}
{
if ($BackPart >= 1) then
for $a in 1 to $BackPart
let $cislo_id := if ($Spine = 1) then number('3') else if ($FC = 1 and $FS = 1) then number('2') else if ($FC = 1) then number('1') else number('0')
return 
<surface xml:id="id_{format-number(($a - $MainPart_start)+$cislo_id+$FrontPart+$MainPart_page+$MainPart_folio + 1, '00000')}">
         <desc>
            <label>{local:number-to-roman($a)}</label>
         </desc>
         <graphic url="{$Prefix_back}{format-number(($a - $MainPart_start)+$cislo_id+$FrontPart+$MainPart_page+$MainPart_folio - 202, $Format)}{$Extension}"/>
      </surface>
      else ''
}
{
if ($BS = 1) then 
for $a in 1
let $cislo_id := if ($Spine = 1) then number('3') else if ($FC = 1 and $FS = 1) then number('2') else if ($FC = 1) then number('1') else number('0')
let $BS := if ($a = 1) then 'BS' else ''

return
<surface xml:id="id_{format-number(($a - $MainPart_start)+$cislo_id+$FrontPart+$MainPart_page+$BackPart+$MainPart_folio + 1, '00000')}">
         <desc>
            <label>{$BS}</label>
         </desc>
         <graphic url="{$Prefix_back}{format-number(($a - $MainPart_start)+$cislo_id+$FrontPart+$MainPart_page+$BackPart+$MainPart_folio - 33, $Format)}{$Extension}"/>
      </surface>
      else ''
}
{
if ($BC = 1) then
 
for $a in 1
let $cislo_id := if ($Spine = 1) then number('3') else if ($FC = 1 and $FS = 1) then number('2') else if ($FC = 1) then number('1') else number('0')
let $BC := if ($a = 1) then 'BC' else ''

return
<surface xml:id="id_{format-number(($a - $MainPart_start)+$cislo_id+$FrontPart+$MainPart_page+$BackPart+$BS+$MainPart_folio + 1, '00000')}">
         <desc>
            <label>{$BC}</label>
         </desc>
         <graphic url="{$Prefix_back}{format-number(($a - $MainPart_start)+$cislo_id+$FrontPart+$MainPart_page+$BackPart+$BS+$MainPart_folio - 33, $Format)}{$Extension}"/>
      </surface>
      else ''
}
</facsimile>
return $facsimile