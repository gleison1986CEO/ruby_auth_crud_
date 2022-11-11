json.extract! tabela, :id, :nome, :email, :whatsapp, :created_at, :updated_at
json.url tabela_url(tabela, format: :json)
