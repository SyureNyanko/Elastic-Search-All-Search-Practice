curl -X GET "http://localhost:9200/page_all_search/entry/_search?pretty=true" -d'
{ "query": { "match" : { "content": "Ruby" }}}'  -H 'Content-Type: application/json'
