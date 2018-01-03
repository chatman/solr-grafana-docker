for i in {2..10}
do
   echo "Restarting solr$i"
   docker exec solrgrafanadocker_solr${i}_1 /bin/bash -c "/opt/solr/bin/solr stop -all; /opt/solr/bin/solr -c -z zk1:2181 -m 4g"
   sleep 2
done

