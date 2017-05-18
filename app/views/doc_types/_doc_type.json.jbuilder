json.extract! doc_type, :id, :title, :shortname, :template, :created_at, :updated_at
json.url doc_type_url(doc_type, format: :json)
