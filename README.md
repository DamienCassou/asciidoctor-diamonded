# Utilisation

## Pré-requis

+ ruby
+ bundler
+ xmllint
+ libreoffice

Exécuter `bundle install` depuis le dossier cloné contenant le `Gemfile.lock`, pour installer Asciidoctor et ses dépendances.

## Génération

Des fichiers exemples .adoc sont disponibles à la racine. Pour générer leur équivalent .fodt et .odt, un `Makefile` est disponible,
lancez la commande suivante pour les générer:

    make

Libreoffice doit être fermé à la génération avec `soffice`.

## TODO

[ ] Le style code_em ne peut-être appliqué dans un listing code ou listing session
[ ] Les guillemets ne sont pas rendus correctement
[ ] Un caractère supplémentaire apparaît avec ...
[ ] Numérotation automatique des titres auto slim/fodt/section.fodt.slim
[ ] Nettoyer slim/fodt/table.fodt.slim
[ ] Styliser tableau
[ ] Une page vide s'ajoute à la fin de gnulinuxmagazine.odt
