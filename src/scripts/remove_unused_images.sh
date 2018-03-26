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
       let COUNTER++
      fi
    done
  done
  if test ${COUNTER} = 0
  then (
    echo "rm ${HOME}src/docs/images/${p}"
    rm ${HOME}src/docs/images/${p}
  )
  fi
done
exit 0
