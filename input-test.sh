curl -X POST $1':9200/all_search/entry' -d '{
  "title": "Rubyによるアプリケーション設計入門",
  "content": "この記事ではRubyによるアプリケーション設計に入門するための情報を書きます。",
  "categories": ["Ruby入門", "アプリケーション設計"],
  "blog_id": 12346,
  "status": "published",
  "pv": 98765,
  "bookmark_count": 123,
  "published_at": "2016-08-30T12:34:56+09:00"
  "char_filter":  [ "html_strip" ],
  "text": "<p>I&apos;m so <b>happy</b>!</p>",
}' -H 'Content-Type: application/json'
