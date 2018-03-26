#!/bin/bash

HOME=/home/isyfact/IdeaProjects/isy-documentation/

for p in `cd ${HOME}src/docs/images/; ls *.png`
do
  for f in `find ${HOME}src/docs/ -type d -name "19*"`
  do
    for t in `find ${f} -name "*.adoc"`
    do
      grep -q "image::$p" ${t}
      if test $? -eq 0
      then
      (
        if [ ! -d ${f}/images ]
        then
          mkdir ${f}/images
        fi
        mv ${HOME}src/docs/images/${p} ${f}/images
      )
      fi
    done
  done
done
exit 0
