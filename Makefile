export PATH := ${CURDIR}/bin:$(PATH)

DIRDEST=builds
SRCFILES=gnulinuxmagazine.adoc modele_tutoriel_lpm.adoc gnulinuxmagazineHS.adoc  gnulinuxmagazine_recette.adoc  modele_article_diamond.adoc  modele_misc.adoc

HTMLFILES=$(SRCFILES:.adoc=.html)
FODTFILES=$(SRCFILES:.adoc=.fodt)
ODTFILES=$(FODTFILES:.fodt=.odt)

.PHONY : all clean html guard

all : clean $(FODTFILES) $(ODTFILES)

guard:
	bundle exec guard

clean :
	-rm $(DIRDEST)/*odt $(DIRDEST)/*html

html: $(HTMLFILES)

%.html: %.adoc
	bundle exec asciidoctor --destination-dir $(DIRDEST) --attribute lang=fr --trace -T slim $<

%.fodt: %.adoc
	bundle exec asciidoctor --destination-dir $(DIRDEST) --trace -T slim -b fodt $<
	xmllint --format $(DIRDEST)/$@ > $(DIRDEST)/$@.tmp
	mv $(DIRDEST)/$@.tmp $(DIRDEST)/$@

%.odt : %.fodt
	soffice --headless --invisible --convert-to odt --outdir $(DIRDEST) $(DIRDEST)/$<
