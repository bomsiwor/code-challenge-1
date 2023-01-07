<?php

/*
[INDONESIA LANGUAGE]
Fungsi yang memuat logika konversi angka (integer) menjadi format waktu
yang bisa dibaca manusia.

constraint of $number :
0 < n <= inf.

*/

function converInt($number)
{
    $jam = floor($number / 3600);
    $menit = floor(($number % 3600) / 60);
    $detik = $number % 60;

    $res = '';

    if ($jam > 0) :
        $res .= "$jam jam ";
    endif;
    if ($menit > 0) :
        $res .= "$menit menit ";
    endif;
    if ($detik > 0) :
        $res .= "$detik detik ";
    endif;

    return $res;
};

/*
Example of using the function.
*/
$number = 10000;
echo converInt($number);
