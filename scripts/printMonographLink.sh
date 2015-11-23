#!/bin/bash
#vypise krameriovske url rukopisu/stareho tisku po zadani signatury
#v aktualnim adresari se musi nachazet importni log SIGNATURA.log.xml,
#z ktereho se ta informace ziska
#PID=`pcregrep -M '<model_monograph>\n' $1.log.xml | grep 'uuid:'| sed s_\<pid\>__ | sed s_\</pid\>__ | tr -d '[:blank:]'`
PID=`pcregrep -M '<model_monograph>\n' $1log.xml | grep 'uuid:'| sed s_\<pid\>__ | sed s_\</pid\>__ | tr -d '[:blank:]'`
echo http://kramerius.mzk.cz/search/handle/$PID

