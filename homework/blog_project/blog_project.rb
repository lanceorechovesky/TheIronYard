require 'sinatra'
require 'faker'
require 'data_mapper'

DataMapper.setup(
  :default, 'mysql://root@localhost/Blog')

class Post
  include DataMapper::Resource
  property :id, Serial
  property :title, String
  property :body, Text, :lazy=>false
end

DataMapper.finalize.auto_upgrade!

get '/' do
  @posts = Post.all
  erb :front_page, layout: :blog_layout
end

get '/create_post' do
  erb :create_post, layout: :blog_layout
end

post '/create_post' do
  @posts = Post.create params[:post]
  redirect to('/')
end

get '/edit_post/:id' do
  @posts = Post.get params[:id]
  erb :edit_post, layout: :blog_layout
end

put '/edit_post/:id' do
  @posts = Post.get params[:id]
  @posts.update params[:post]
  redirect to('/')
end

delete '/delete_post/:id' do
  @posts = Post.get params[:id]
  @posts.destroy
  redirect to('/')
end

















