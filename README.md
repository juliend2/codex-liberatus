# Data Bible

*Data Bible* est une application Web d'étude biblique dont le code source est libre.

## Fonctionnalités

* Outil de recherche de versets, avec opérateurs booléens (&& et ||), par livre
  ou par auteur, et possibilité de grouper certains termes afin d'avoir plus de
  flexibilité. Par exemple: "joie && (Christ || Jésus)" va donner des versets
  qui contiennent le mot "joie", ainsi que soit "Jésus" ou "Christ", ou les deux.
* Étiquettage (tagging) de passages (groupes de versets) pour une catégorisation flexible
* Ajout de notes personnelles aux passages sélectionnés
* Nuage de mots, pour voir quels sont les mots les plus utilisés dans chaque
  livre de la Bible
* Traductions **Louis Segond (1910)**, **Martin (1744)** et **Osterval (1996)** incluses
* Lecture parallèle (côte à côte) de plusieurs traductions de la Bible en même temps

### Captures d'écran

#### Mode de lecture de plusieurs traductions en parallèle

<div>
<a href="doc/db_lecture_parallele.gif"><img src="doc/db_lecture_parallele.gif" width="300px" /></a>
</div>

#### Nuage de mots populaires pour chaque livre

<div>
<a href="doc/db_wordcloud.gif"><img src="doc/db_wordcloud.gif" width="300px" /></a>
</div>

#### Étiquetter des passages de la Bible

<div>
<a href="doc/db_tagger.gif"><img src="doc/db_tagger.gif" width="300px" /></a>
<a href="doc/db_tags.gif"><img src="doc/db_tags.gif" width="300px" /></a>
</div>

#### Ajout de notes à des passages

<div>
<a href="doc/db_annoter.gif"><img src="doc/db_annoter.gif" width="300px" /></a>
<a href="doc/db_notes.gif"><img src="doc/db_notes.gif" width="300px" /></a>
</div>

#### Outil de recherche de versets

<div>
<a href="doc/db_searchresults.png"><img src="doc/db_searchresults.png" width="300px" /></a>
</div>

#### Plusieurs traductions françaises disponibles

<div>
<a href="doc/db_versions.gif"><img src="doc/db_versions.gif" width="300px" /></a>
</div>

### Fonctionnalités futures

* Page qui liste les livres et chapitres par auteur présumé
* Page qui liste les livres et chapitres par époque présumée de rédaction (ordre chronologique)
* Ajouter l'index de concordances de [Strong](https://en.wikipedia.org/wiki/Strong%27s_Concordance) sur les mots qui s'appliquent. Au moins pour la traduction Louis Segond qui est actuellement disponible.
* Outil de recherche plus avancé, entre autre pour:
  * exclure certains mots des résultats de recherche

## Pré-requis

* Docker
* Docker compose

## Installation

1. `git clone https://github.com/juliend2/data-bible.git`
2. `cd data-bible`
3. `bundle install`
4. `rake db:migrate`
5. `rake db:seed` to first create the Authors and Books that will be associated with the data we will import in the next step
6. `env JSON_PATH=./db/seed_data/louis-segond-formatted.json VERSION_SLUG=LSG rake db:seed`

## Lancer l'application

1. `docker-compose up`
2. Ouvrir [http://localhost:3000/](http://localhost:3000/) dans votre
   navigateur.

## License

[GPLv3](http://www.gnu.org/licenses/gpl-3.0.fr.html)
