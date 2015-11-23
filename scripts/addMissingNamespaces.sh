#!/bin/sh
#spustit s jednim parameterem - adresar ENRICH
for filename in $1/*/*.tei.xml
do
  #sed -i -e 's_\<TEI\>_\<TEI\ xmlns=\"http://www.tei-c.org/ns/1.0\"\>_' $filename
  sed -i -e 's_<TEI>_<TEI xmlns="http://www.tei-c.org/ns/1.0">_' $filename
done;
