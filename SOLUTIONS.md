# Cooking data with PHP (Solutions)!

## Dictionary

```php
$string = file_get_contents("dictionnaire.txt", FILE_USE_INCLUDE_PATH);
$dico = explode("\n", $string);
```

The result is an array containing all the words.

### Exercices

* How many words this dictionary contains?

```php
echo count($dico); // answer: 336532
```

* How many words have exactly 15 characters?

```php
$words_15 = array();
foreach ($dico as $word) {
    if (strlen($word) == 15) {
        array_push($words_15, $word);
    }
}
echo count($words_15); // answer: 12298
```

* How many words containing the letter 'w'?

```php
$words_w = array();
foreach ($dico as $word) {
    if (strpos($word, "w") !== false) {
        array_push($words_w, $word);
    }
}
echo count($words_w); // answer: 537
```

* How many words end with the letter 'q'?

```php
$words_q = array();
foreach ($dico as $word) {
    if (substr($word, -1) == "q") {
        array_push($words_q, $word);
    }
}
echo count($words_q); // answer: 8
```

To be continued..
