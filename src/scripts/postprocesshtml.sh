#!/bin/bash

# Stellt Verlinkung der HTML-Dokumentation der IsyFact-Dokumente untereinander her
#
# Funktionsweise:
# - Erstelle Liste der HTML-Dateien (1) ohne Pfad (KonzeptLogging.html, NutzungsvorgabenLogging.html, ...)
# - Durchsuche alle HTML-Dateien (2) nach Links der Form <a href="#<RefZuIsyFactDokument>"/> (3)
# - Ermittle den relative Pfad zum Zieldokument (4) und setzte diesen ein (3). Beispiel:
#   In KonzeptUeberwachungKonfiguration.html:
#   <a href="#DetailkonzeptKomponenteBatch"/> --> <a href="../Blaupausen/DetailkonzeptKomponenteBatch.html">
# - Entferne den Eintrag aus dem Literaturverzeichnis der HTML-Datei (5)
# - Ist das Literaturverzeichnis am Ende komplett leer, entferne das gesamte Verzeichnis und den Eintrag
#   zum Literaturverzeichnis aus dem Inhaltsverzeichnis (6)

getHtmlFilePathForBibRef() {
    find . -name $1.html
}

# (4)
getRelativeHtmlPathForBibRefs() {
    htmlFileForBibRef1=$(getHtmlFilePathForBibRef $1)
    htmlFileForBibRef2=$(getHtmlFilePathForBibRef $2)

    dirOfFile1=$(dirname $htmlFileForBibRef1)
    dirOfFile2=$(dirname $htmlFileForBibRef2)

    realpath $dirOfFile2 --relative-to=$dirOfFile1
}

# (3)
replaceLinks() {
    newLinkTarget=$(getRelativeHtmlPathForBibRefs $1 $2 | sed -e 's/[\/&]/\\&/g')

    sed -i -r "s/<a href=\"#($2)\">/<a href=\"$newLinkTarget\/$2.html\">/g" $3
}

# (5)
removeFromBibliography() {
    sed -i -z "s/<li>\n<p><a id=\"$1\"><\/a>\[$1\]<br>\n[^\n]\+\n[^\n]\+\n<\/li>\n//g" $2
}

# (6)
removeEmptyBibliography() {
    oldFileSize=$(stat --printf="%s" $1)

    sed -i -z 's/<div class="sect1">\n<h2 id="literaturverweise"><a class="anchor" href="#literaturverweise"><\/a><a class="link" href="#literaturverweise">Literaturverweise<\/a><\/h2>\n<div class="sectionbody">\n<div class="ulist bibliography">\n<ul class="bibliography">\n<\/ul>\n<\/div>\n<\/div>\n<\/div>\n//g' $1

    newFileSize=$(stat --printf="%s" $1)

    if [ $oldFileSize -gt $newFileSize ]
    then
        sed -i -z 's/<li><a href="#literaturverweise">Literaturverweise<\/a><\/li>//g' $1
        echo "..Removed bibliography from $1"
    fi
}

# (1)
replaceableBibRefs=($(find . -name *.html | xargs basename -s .html))

# (2)
for replaceableBibRef in ${replaceableBibRefs[@]}
do
    htmlFile=$(getHtmlFilePathForBibRef $replaceableBibRef)
    echo "Linking $htmlFile"

    for bibRefToReplace in ${replaceableBibRefs[@]}
    do
        replaceLinks $replaceableBibRef $bibRefToReplace $htmlFile
        removeFromBibliography $bibRefToReplace $htmlFile
    done

    removeEmptyBibliography $htmlFile
done
