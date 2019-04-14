curl -X POST http://localhost:9200/all_search/entry -d '{
  "title": "Rubyによるアプリケーション設計入門",
  "content": "<b>この記事ではRubyによるアプリケーション設計に入門するための情報を書きます。</b>",
  "categories": ["Ruby入門", "アプリケーション設計"],
  "blog_id": 12345,
  "status": "published",
  "pv": 98765,
  "bookmark_count": 123,
  "published_at": "2016-08-30T12:34:56+09:00"
}' -H 'Content-Type: application/json'
