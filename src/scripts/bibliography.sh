#!/bin/bash

# Erzeugt für Dokumente individuelle Literaturverzeichnisse
#
# Funktionsweise:
# - common/bibliography.adoc enthält alle Literaturrefenzen in der Form [[[BibRef]]]. Baue eine Liste aller Referenzen (1)
# - Suche in adoc-Dateien aller Dokumente (2) nach Referenzen der Form <<BibRef>> (3)
# - Extrahiere für jede gefundene Referenz den Eintrag aus bibliography.adoc und übernehme in indiviuelle
#   bibliography.adoc des Dokuments (4)

# (1)
allBibRefs=($(gawk 'match($0, /\[\[\[(.+)\]\]\]/, m) { print m[1]}' common/bibliography.adoc))

# (3)
findRefs() {
    for ref in $@
    do
        cat $dir/thisdoc.adoc $dir/inhalt.adoc $dir/anhaenge.adoc | gawk -v foundref=$ref 'match($0, /<<([a-zA-Z0-9]+)>>/, m) && m[1] == foundref { print m[1]; }' RS=" " | sort -u
    done
}

# (4)
buildDocumentBibliography() {
    refs=($@)
    refsSize=${#refs[@]}

    if [ $refsSize -gt 0 ]
    then
        echo -e "[bibliography]\n== Literaturverweise" > $dir/bibliography.adoc

        for ref in $@
        do
          gawk -v foundref=$ref 'match($1, /\[\[\[(.+)\]\]\]/, m) && m[1] == foundref { print $0 }' RS='' FS='\n' common/bibliography.adoc | tee -a $dir/bibliography.adoc
        done
    else
        touch $dir/bibliography.adoc
    fi
}

allDocDirectories=($(find {1,2}0_* -name master.adoc | xargs dirname))

# (2)
for dir in ${allDocDirectories[@]}
do
    bibRefs=$(findRefs ${allBibRefs[@]})
    buildDocumentBibliography ${bibRefs[@]}
done
