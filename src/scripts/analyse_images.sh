#!/bin/bash

HOME=/home/isyfact/IdeaProjects/isy-documentation/

for p in `cd ${HOME}src/docs/images/; ls *.png`
do
  COUNTER=0
  for f in `find ${HOME}src/docs/ -type d -name "19*"`
  do
    for t in `find ${f} -name "*.adoc"`
    do
      grep -q "image::$p" ${t}
      if test $? -eq 0
      then
      {
        let COUNTER++
        case ${p} in
        BVA-Footer.png|BVA-Logo.png|BVA-Mirror.png|CC-BY.png|IsyFact-Logo.png) echo "Allgemein" ;;
#        *) echo ${p} ;;
#        *) mv ${HOME}src/docs/images/${p} ${HOME}src/docs/${f}/images ;;
        esac

#        if [ ! -d ${HOME}src/docs/${f}/images ]; then
#          mkdir ${HOME}src/docs/${f}/images
#        fi
        
      }
      fi
    done
  done
  echo "${COUNTER} ${p}"
done
exit 0
