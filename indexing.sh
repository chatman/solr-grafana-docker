curl "http://localhost:8983/solr/admin/collections?action=CREATE&name=mycoll2&numShards=2&replicationFactor=2"
curl "http://localhost:7574/solr/admin/collections?action=CREATE&name=mycoll2&numShards=2&replicationFactor=2&externalState=true"

for i in {1..2000};
   do echo $i; curl "http://localhost:8983/solr/mycoll2/update?commit=true" -X POST -d "[{'id':'id$i'}, {'id':'myid$i'}]" -H "Content-type: application/json"; \
      echo $i; curl "http://localhost:7574/solr/mycoll2/update?commit=true" -X POST -d "[{'id':'id$i'}, {'id':'myid$i'}]" -H "Content-type: application/json"; \
      if ! (( $i % 20 )); then \
          echo "RELOADING.."; \
          curl "http://localhost:8983/solr/admin/collections?action=RELOAD&name=mycoll2"; \
          curl "http://localhost:7574/solr/admin/collections?action=RELOAD&name=mycoll2"; \
      fi
done
