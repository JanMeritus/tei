#!/bin/sh
#spustit s jednim parameterem - adresar ENRICH
for filename in $1/*/*.tei.xml
do
  sed -i -e 's_http://klokan.mzk.cz/media/_http://hades.mzk.cz/media/mzk03/_' $filename
done;
