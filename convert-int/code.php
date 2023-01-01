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
    $jam = 0;
    $menit = 0;
    $detik = 0;
    $res = '';

    if ($number >= 3600) :
        $jam = floor($number / 3600);
        $res .= $jam . " jam "; // Not showing the Hours, if it zero.
    endif;
    $remainder = $number % 3600;

    $menit = (($remainder / 60) > 0) ? floor($remainder / 60) : 0;
    $detik = $remainder % 60;

    // If the minutes or second are 0, do not return them.
    $res .= (($menit > 0) ? $menit . " menit " : '') . (($detik > 0) ? $detik . " detik " : '');

    return $res;
};

/*
Example of using the function.
*/
$number = 10000;
print_r(converInt($number));
