json.array!(@amigos) do |amigo|
  json.extract! amigo, :id, :nome, :email, :telefone, :endereco, :aniversario
  json.url amigo_url(amigo, format: :json)
end
