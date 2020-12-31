cd $CATALINA_HOME/conf
envsubst < context.xml.tmp > context.xml
envsubst < redisson-replicated.yml.tmp > redisson-replicated.yml
envsubst < redisson-single.yml.tmp > redisson-single.yml
rm *.tmp

$CATALINA_HOME/bin/catalina.sh run