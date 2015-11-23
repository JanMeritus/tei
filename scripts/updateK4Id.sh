#!/bin/sh
#spustit s jednim parameterem - adresar ENRICH
for filename in $1/*/*.tei.xml
do
  #sed -i -e 's|<altIdentifier type="k4_pid"><idno>|<altIdentifier type="other">\n<repository>Kramerius 4</repository>\n<idno type="k4_pid">|' $filename
  sed -i -e 's|<repository>Kramerius 4</repository>|<repository>http://kramerius4.mzk.cz</repository>|' $filename
done;
 
