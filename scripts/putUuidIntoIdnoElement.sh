#!/bin/sh
#spustit s jednim pa#spustit s jednim parameterem - adresar ENRICH
for filename in $1/*/*.tei.xml
do
  sed -i -e 's|uuid:.\{36\}|<idno>&</idno>|' $filename 
done;
