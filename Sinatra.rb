require 'sinatra'
require 'json'

# Simulando uma lista de livros
livros = [
    { id: 1, titulo: 'Livro 1', autor: 'Autor 1' },
    { id: 2, titulo: 'Livro 2', autor: 'Autor 2' },
    { id: 3, titulo: 'Livro 3', autor: 'Autor 3' }
]

# Rota para obter todos os livros
get '/livros' do
    content_type :json
    livros.to_json
end

# Rota para obter informações sobre um livro específico
get '/livros/:id' do
    id = params[:id].to_i
    livro = livros.find { |livro| livro[:id] == id }
    if livro
        content_type :json
        livro.to_json
    else
        status 404
        'Livro não encontrado'
    end
end