# ConverInt Function
This function convert an integer number into human readable string representing hours-minute-seconds.

```php
string convertInt(int $number): String
```

## Parameters
`number` is an Integer (representing seconds) to be converted.

## Return
A String value containing hours, minute, and second. And only displaying hour/minute/second if it greater than 0.

## Example
```php
echo convertInt(3661); // return "1 jam 1 menit 1 detik"
echo convertInt(7200); // return "2 jam"
echo convertInt(600); // return "10 menit"
echo converInt(42); // return "42 detik"
```

## Note
If the input is negative.
Will return empty.
