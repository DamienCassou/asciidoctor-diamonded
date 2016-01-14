DIRDEST=builds
SRCFILES=gnulinuxmagazine.adoc  gnulinuxmagazineHS.adoc  gnulinuxmagazine_recette.adoc  modele_article_diamond.adoc  modele_misc.adoc

FODTFILES=$(SRCFILES:.adoc=.fodt)
ODTFILES=$(FODTFILES:.fodt=.odt)

.PHONY : all clean
all : clean $(FODTFILES) $(ODTFILES)

clean :
	-rm builds/*odt

%.fodt: %.adoc
	bundle exec asciidoctor --destination-dir $(DIRDEST) --trace -T slim -b fodt $<
	xmllint --format $(DIRDEST)/$@ > $(DIRDEST)/$@.tmp
	mv $(DIRDEST)/$@.tmp $(DIRDEST)/$@

%.odt : %.fodt
	soffice --headless --invisible --convert-to odt --outdir $(DIRDEST) $(DIRDEST)/$<
