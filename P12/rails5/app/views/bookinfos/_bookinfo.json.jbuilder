json.extract! bookinfo, :id, :acct, :title, :author, :edition, :publication, :created_at, :updated_at
json.url bookinfo_url(bookinfo, format: :json)