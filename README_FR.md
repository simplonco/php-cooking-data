# Cuisinons des données avec PHP !

![Cooking time](cooking-time.jpg)

## Dictionnaire

Commencez par télécharger un dictionnaire de la langue française puis chargez le dans votre code :

```php
$string = file_get_contents("dictionnaire.txt", FILE_USE_INCLUDE_PATH);
$dico = explode("\n", $string);
```

Le résultat est alors un tableau contenant tous les mots.

### Exercices

* Combien de mots contient ce dictionnaire ?
* Combien de mots font exactement 15 caractères ?
* Combien de mots contiennent la lettre « w » ?
* Combien de mots finissent par la lettre « q » ?


## Liste de films

Télécharger le top100 des films visionnés au États-Unis sur la plateforme iTunes.

```php
$string = file_get_contents("films.json", FILE_USE_INCLUDE_PATH);
$brut = json_decode($string, true);
$top = $brut["feed"]["entry"]; # liste de films
```

### Exercices

* Afficher le top10 des films sous cette forme :

```
1 Mission: Impossible - Rogue Nation
2 …
…
10 …
```

* Quel est le classement du film « Gravity » ?
* Quel est le réalisateur du film « The LEGO Movie » ?
* Combien de films sont sortis avant 2000 ?
* Quel est le film le plus récent ? Le plus vieux ?
* Quelle est la catégorie de films la plus représentée ?
* Quel est le réalisateur le plus présent dans le top100 ?
* Combien cela coûterait-il d'acheter le top10 sur iTunes ? de le louer ?
* Quel est le mois ayant vu le plus de sorties au cinéma ?
* Quels sont les 10 meilleurs films à voir en ayant un budget limité ?
