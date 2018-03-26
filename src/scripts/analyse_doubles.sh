#!/bin/bash

HOME=/home/isyfact/IdeaProjects/isy-documentation/

DOUBLES=(FA-AW.png IFRefArcITSysGUI.png)
for p in ${DOUBLES[@]}
do
  for f in `find ${HOME}src/docs/ -type d -name "19*"`
  do
    for t in `find ${f} -name "*.adoc"`
    do
      grep -q "image::$p" ${t}
      if test $? -eq 0
      then
        echo "${p} ${f}"
      fi
    done
  done
done
exit 0
