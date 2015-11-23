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
local:number-to-roman(2012)

