# Utilisation

## Pré-requis

+ ruby
+ bundler
+ xmllint
+ libreoffice

Exécuter `bundle install` depuis le dossier cloné contenant le `Gemfile.lock`, pour installer Asciidoctor et ses dépendances.

## Génération

Des fichiers exemples `.adoc` correspondant aux différents modèles Diamond sont disponibles à la racine.
Pour générer leur équivalent `.fodt` et `.odt`, un `Makefile` est disponible,
lancez la commande suivante pour les générer:

    make

Libreoffice doit être fermé à la génération avec `soffice`.

Les fichiers finaux `fodt` et `odt` sont générés dans le dossier `build`.

## Extension chrome:

Si vous ne voulez pas avoir à générer votre fichier final pendant la rédaction, mais désirez quand même avoir
un aperçu, vous pouvez utiliser une extension Chrome ou Firefox qui va styliser à la volée le fichier `adoc`.

Notez néanmoins que le style appliqué est le style HTML par défaut de Asciidoctor, donc certains styles ne sont pas équivalents
aux styles de ces templates, et certains ne sont pas du tout affichés. De plus, les directives d'inclusion ne sont pas directement affichées.

Par défaut l'extenson navigateur marhce en mode `Safe`: seules les fichiers `adoc` en ligne sont stylisés. Pour que les fichiers locaux lus depuis votre
système de fichiers soient traités il faut activer l'option `Unsafe` (Firefox) ou `Autoriser l'accès aux URL de fichiers` (Chrome)

## TODO

+ Les statistiques de mots et caractères ne s'affichent pas
+ Gérer les références vers des numéros de sections
+ NOTE Admonition block http://asciidoctor.org/docs/user-manual/#admonition
+ Améliorer le template html5 pour le live preview
+ Ajouter des templates pour les formats ebooks
+ Support des diagrammes
+ Support Latex
+ Un titre/légende est nécessaire aux images pour la numérotation auto
+ Le titre/légende d'une image ne doit pas comporter de retour à la ligne
+ Gestion des liens et references automatique
+ Les guillemets n'affichent pas le même caractère
+ il n'y a pas l'espace avant certaines ponctuations (!, ; et :)
+ Il y a des fois des sauts de lignes inutiles entre le chapeau/mot-clés/résumé/intro
+ Un caractère supplémentaire apparaît avec `...`, besoin de les encadrer par `+++`
+ Nettoyer `slim/fodt/table.fodt.slim`
+ Styliser tableau
+ Une page vide s'ajoute à la fin de `gnulinuxmagazine.odt`
+ On ne peut pas utiliser de retour à la ligne, ni de paragraphe dans le résumé (attribut `short`)
