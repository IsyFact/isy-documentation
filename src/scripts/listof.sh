#!/bin/bash

# Erzeugt Verzeichnisse für Tabellen, Abbildungen und Listings
#
# Funktionsweise:
# - Suche in adoc-Dateien aller Dokumente (1) nach Zeilen der Form
#   '[id="(table-XXX' (2) bzw. '[id="(image-XXX' (3) bzw. '[id="(listing-XXX' (4)
# - Erzeuge für jeden Treffer einen Eintrag im jeweiligen Verzeichnis in der Form
#   '<<table-XXX>> {desc-XXX}' z.B. für Tabellen

# (2)
buildListOfTables() {
    cat $dir/thisdoc.adoc $dir/inhalt.adoc $dir/anhaenge.adoc | egrep -q '\[id="(table-.+)",'

    if [ $? -eq 0 ]
    then
        echo -e "\n== Tabellenverzeichnis\n" > $dir/listoftables.adoc

        cat $dir/docinfo.adoc $dir/thisdoc.adoc $dir/inhalt.adoc $dir/anhaenge.adoc | gawk 'match($0, /\[id="(table-.+)",/, m) { print "<<" m[1] ">>" " {desc-" m[1] "}\n" }' | tee -a $dir/listoftables.adoc
    else
        touch $dir/listoftables.adoc
    fi
}

# (3)
buildListOfFigures() {
    cat $dir/thisdoc.adoc $dir/inhalt.adoc $dir/anhaenge.adoc | egrep -q '\[id="(image-.+)",'

    if [ $? -eq 0 ]
    then
        echo -e "\n== Abbildungsverzeichnis\n" > $dir/listoffigures.adoc

        cat $dir/docinfo.adoc $dir/thisdoc.adoc $dir/inhalt.adoc $dir/anhaenge.adoc | gawk 'match($0, /\[id="(image-.+)",/, m) { print "<<" m[1] ">>" " {desc-" m[1] "}\n" }' | tee -a $dir/listoffigures.adoc
    else
        touch $dir/listoffigures.adoc
    fi
}

# (4)
buildListOfListings() {
    cat $dir/thisdoc.adoc $dir/inhalt.adoc $dir/anhaenge.adoc | egrep -q '\[id="(listing-.+)",'

    if [ $? -eq 0 ]
    then
        echo -e "\n== Listenverzeichnis\n" > $dir/listoflistings.adoc

        cat $dir/docinfo.adoc $dir/thisdoc.adoc $dir/inhalt.adoc $dir/anhaenge.adoc | gawk 'match($0, /\[id="(listing-.+)",/, m) { print "<<" m[1] ">>" " {desc-" m[1] "}\n" }' | tee -a $dir/listoflistings.adoc
      else
          touch $dir/listoflistings.adoc
      fi
}


allDocDirectories=($(find {1,2}0_* -name master.adoc | xargs dirname))

# (1)
for dir in ${allDocDirectories[@]}
do
    buildListOfTables
    buildListOfFigures
    buildListOfListings
done
