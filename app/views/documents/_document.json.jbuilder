json.extract! document, :id, :title, :number, :customer, :doc_type_id, :project_id, :purpose, :method, :references, :naming_conventions, :change_log, :created_at, :updated_at
json.url document_url(document, format: :json)
