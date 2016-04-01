# Cuisinons des données avec PHP (Solutions)

## Dictionnaire

```php
    $string = file_get_contents("dictionnaire.txt", FILE_USE_INCLUDE_PATH);
    $dico = explode("\n", $string);
```

Le résultat est alors un tableau contenant tous les mots.

### Exercices

* Combien de mots contient ce dictionnaire ?

```php
    echo count($dico); // answer: 336532
```

* Combien de mots font exactement 15 caractères ?

```php
  $words_15 = array();
  foreach ($dico as $word) {
    if (strlen($word) == 15) {
      array_push($words_15, $word);
    }
  }
  echo count($words_15); // answer: 12298
```

* Combien de mots contiennent la lettre « w » ?

```php
  $words_w = array();
  foreach ($dico as $word) {
    if (strpos($word, "w") !== false) {
      array_push($words_w, $word);
    }
  }
  echo count($words_w); // answer: 537
```

* Combien de mots finissent par la lettre « q » ?

```php
  $words_q = array();
  foreach ($dico as $word) {
    if (substr($word, -1) == "q") {
      array_push($words_q, $word);
    }
  }
  echo count($words_q); // answer: 8
```

A suivre..
