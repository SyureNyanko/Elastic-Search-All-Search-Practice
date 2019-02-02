curl -X PUT $1':9200/all_search' -d '{
  "settings": {
    "index": {
      "analysis": {
        "tokenizer": {
          "ja_text_tokenizer": {
            "type": "kuromoji_tokenizer",
            "mode": "search"
          }
        },
        "analyzer": {
          "ja_text_analyzer": {
            "tokenizer": "ja_text_tokenizer",
            "type": "custom",
            "char_filter": [
              "icu_normalizer"
            ],
            "filter": [
              "kuromoji_part_of_speech"
            ]
          }
        }
      }
    }
  },
  "mappings": {
    "entry": {
      "dynamic": "strict",
      "properties": {
        "title": {
          "type": "text",
          "analyzer": "ja_text_analyzer"
        },
        "content": {
          "type": "text",
          "analyzer": "ja_text_analyzer"
        },
        "categories": {
          "type": "text",
          "index": "false",
          "copy_to": "analyzed_categories"
        },
        "analyzed_categories": {
          "type": "text",
          "analyzer": "ja_text_analyzer"
        },
        "blog_id": {
          "type": "long"
        },
        "status": {
          "type": "text",
          "index": "false"
        },
        "pv": {
          "type": "integer"
        },
        "bookmark_count": {
          "type": "integer"
        },
        "published_at": {
          "type": "date",
          "format": "date_time_no_millis"
        }
      }
    }
  }
}' -H 'Content-Type: application/json'
