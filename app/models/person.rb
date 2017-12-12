class Person
  require 'rest-client'
  attr_accessor :userId, :id, :title, :body
  # url para requisição
  URL = 'https://jsonplaceholder.typicode.com/posts/'.freeze

  ##
  # Inicializador da classe mapeando o JSON
  def initialize(params={})
    @id = params['id']
    @userId = params['userId']
    @title = params['title']
    @body = params['body']
  end

  ##
  # Buscar um registro no serviço
  def self.find(id)
    new(JSON.parse(RestClient.get(URL+id)))
  end

  ##
  # Listar todos os registros
  def self.all()
    persons = Array.new
     JSON.parse(RestClient.get(URL)).each do |p|
       persons << new(p)
     end
     persons
  end

end
