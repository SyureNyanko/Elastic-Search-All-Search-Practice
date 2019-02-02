curl -X GET $1":9200/all_search/entry/_search?pretty=true" -d'
{
   "query": {
       "match_all": {}
   }
}'  -H 'Content-Type: application/json'