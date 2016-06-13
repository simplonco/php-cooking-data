# Cooking data with PHP!

## Dictionary

First download a dictionary of the French language and then load it in your code:

```php
$string = file_get_contents("dictionnaire.txt", FILE_USE_INCLUDE_PATH);
$dico = explode("\n", $string);
```

The result is an array containing all the words.

### Exercices

* How many words this dictionary contains?
* How many words have exactly 15 characters?
* How many words containing the letter 'w'?
* How many words end with the letter 'q'?


## List of movies

Download the top 100 movies viewed in the United States on the iTunes platform.

```php
$string = file_get_contents("movies.json", FILE_USE_INCLUDE_PATH);
$brut = json_decode($string, true);
$top = $brut["feed"]["entry"]; # list of movies
```

### Exercices

* Display the top 10 movies in this form:

```
1 Mission: Impossible - Rogue Nation
2 …
…
10 …
```

* What is the ranking of the movie "Gravity"?
* What is the director of "The LEGO Movie"?
* How many movies were released before 2000?
* What is the most recent film? The oldest?
* What is the category most represented film?
* What is the most present director in the top100?
* How much would it cost to buy the top 10 on iTunes? or rent it?
* What is the month with the most cinema releases?
* What are the top 10 movies to see with a limited budget?
