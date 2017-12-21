# solr-grafana-docker
Solr with pre-imported Grafana dashboard
========================================

Steps to run
------------

1.
    docker-compose down; docker-compose up
    
2. Open a browser and hit http://localhost:3000 (login using username=admin, password=admin).
3. Click the "Solr dashboard"
4. Start ./indexing.sh (and, optionally, ./querying.sh)
5. Refresh the dashboard (an icon on top right)
