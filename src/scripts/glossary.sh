#!/bin/bash

# Erzeugt für Dokumente ein individuellen Glossar
#
# Funktionsweise:
# - common/glossary.adoc enthält alle Glossarbegriffe in der Form [id="GlossarBegriff", ... ]. Baue eine Liste aller Begriffe (1)
# - Suche in adoc-Dateien aller Dokumente (2) nach Referenzen der Form <<GlossarBegriff>> (3)
# - Extrahiere für jeden gefundenen Begriff den Eintrag aus glossary.adoc und übernehme in indiviuelle
#   glossary.adoc des Dokuments (4)

IFS=$'\n'

# (1)
readGlossaryTerms() {
    gawk 'match($0, /\[id="(.+)",.+\]/, m) { print m[1] }' common/glossary.adoc
}

# suche in jeder Zeile nach spitzen Klammern (und glossar) und spitze klammer zu. Schreibe sie raus. Schmeiss doppelte weg.

# (3)
findTerms() {
    for term in $@
    do
        cat $dir/thisdoc.adoc $dir/inhalt.adoc $dir/anhaenge.adoc | gawk -v foundref=$term 'match($0, /<<(.+)>>/, m) && m[1] == foundref { print m[1]; }' | sort -u
    done
}

# (4)
buildDocumentGlossary() {
    terms=($@)
    termsSize=${#terms[@]}

    if [ $termsSize -gt 0 ]
    then
        echo -e "[glossary]\n== Glossar" > $dir/glossary.adoc

        for term in $@
        do
          gawk -v foundterm=$term 'match($1, /\[id="(.+)",.+\]/, m) && m[1] == foundterm { print $0 }' RS='' FS='\n' common/glossary.adoc | tee -a $dir/glossary.adoc
        done
    else
        touch $dir/glossary.adoc
    fi
}

# (1)
allGlossaryTerms=$(readGlossaryTerms)

allDocDirectories=($(find {1,2}0_* -name master.adoc | xargs dirname))

# (2)
for dir in ${allDocDirectories[@]}
do
    foundTerms=$(findTerms ${allGlossaryTerms[@]})
    buildDocumentGlossary ${foundTerms[@]}
done
