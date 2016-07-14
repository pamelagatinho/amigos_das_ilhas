class Amigo < ActiveRecord::Base

  validates_presence_of :nome, :telefone, :endereco, :aniversario
end
