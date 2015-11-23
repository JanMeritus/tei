for $a in 61 to 88

(:let $I := if ($a = 1 or $a = 2 or $a = 3) then '1' else '' :)
let $II := if ($a = 4 or $a = 5 or $a = 6) then '2' else '' 
let $III := if ($a = 7 or $a = 8 or $a = 9) then '3' else ''
let $IV := if ($a = 10 or $a = 11 or $a = 12) then '4' else ''
let $V := if ($a = 13 or $a = 14 or $a = 15) then '5' else ''
let $VI := if ($a = 16 or $a = 17 or $a = 18) then '6' else ''
let $VII := if ($a = 19 or $a = 20 or $a = 21) then '7' else ''
let $VIII := if ($a = 22 or $a = 23 or $a = 24) then '8' else ''
let $IX := if ($a = 25 or $a = 26 or $a = 27) then '9' else ''
let $X := if ($a = 28 or $a = 29 or $a = 30) then '10' else ''
let $XI := if ($a = 31 or $a = 32 or $a = 33) then '11' else ''
let $XII := if ($a = 34 or $a = 35 or $a = 36) then '12' else ''
let $XIII := if ($a = 37 or $a = 38 or $a = 39) then '13' else ''
let $XIV := if ($a = 40 or $a = 41 or $a = 42) then '14' else ''
let $XV := if ($a = 43 or $a = 44 or $a = 45) then '15' else ''
let $XVI := if ($a = 46 or $a = 47 or $a = 48) then '16' else ''
let $XVII := if ($a = 49 or $a = 50 or $a = 51) then '17' else ''
let $XVIII := if ($a = 52 or $a = 53 or $a = 54) then '18' else ''
let $XIX := if ($a = 55 or $a = 56 or $a = 57) then '19' else ''
let $XX := if ($a = 58 or $a = 59 or $a = 60) then '20' else ''
let $XXI := if ($a = 61 or $a = 62 or $a = 63) then '21' else ''
let $XXII := if ($a = 64 or $a = 65 or $a = 66) then '22' else ''
let $XXIII := if ($a = 67 or $a = 68 or $a = 69) then '23' else ''
let $XXIV := if ($a = 70 or $a = 71 or $a = 72) then '24' else ''
let $XXV := if ($a = 73 or $a = 74 or $a = 75) then '25' else ''
let $XXVI := if ($a = 76 or $a = 77 or $a = 78) then '26' else ''
let $XXVII := if ($a = 79 or $a = 80 or $a = 81) then '27' else ''
let $XXVIII := if ($a = 82 or $a = 83 or $a = 84) then '28' else ''
let $XXIX := if ($a = 85 or $a = 86 or $a = 87) then '29' else ''


let $bis := if ($a = 2 or $a = 5 or $a = 8 or $a = 11 or $a = 14 or $a = 17 or $a = 20 or $a = 23 or $a = 26 or $a = 29 or $a = 32 or $a = 35 or $a = 38 or $a = 41 or $a = 44 or $a = 47 or $a = 50 or $a = 53 or $a = 56 or $a = 59 or $a = 62 or $a = 65 or $a = 68 or $a = 71 or $a = 74 or $a = 77 or $a = 80 or $a = 83 or $a = 86) then ' bis' else ''
let $ter := if ($a = 3 or $a = 6 or $a = 9 or $a = 12 or $a = 15 or $a = 18 or $a = 21 or $a = 24 or $a = 27 or $a = 30 or $a = 33 or $a = 36 or $a = 39 or $a = 42 or $a = 45 or $a = 48 or $a = 51 or $a = 54 or $a = 57 or $a = 60 or $a = 63 or $a = 66 or $a = 69 or $a = 72 or $a = 75 or $a = 78 or $a = 81 or $a = 84 or $a = 87) then ' ter' else ''

return
<xsl_if test="number($cislo_obrazku) = {$a + 253}">
 <desc><label>{$II}{$III}{$IV}{$V}{$VI}{$VII}{$VIII}{$IX}{$X}{$XI}{$XII}{$XIII}{$XIV}{$XV}{$XVI}{$XVII}{$XVIII}{$XIX}{$XX}{$XXI} {$XXII}{$XXIII}{$XXIV}{$XXV} {$XXVI}{$XXVII}{$XXVIII}{$XXIX}
 {$bis} {$ter}</label></desc>
 </xsl_if>
