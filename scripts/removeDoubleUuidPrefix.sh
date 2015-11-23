#!/bin/sh
#spustit s jednim parameterem - adresar ENRICH
for filename in $1/*/*.tei.xml
do
  sed -i -e 's|uuid:uuid:|uuid:|' $filename 
done;
