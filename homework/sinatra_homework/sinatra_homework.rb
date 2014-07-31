require 'sinatra'
require 'faker'

get '/home_page' do
  erb :home_page, layout: :page_layout
end

get '/contents' do
  erb :contents, layout: :page_layout
end

get '/mission_statement' do
  erb :mission_statement, layout: :page_layout
end

get '/tecnology' do
  erb :tecnology, layout: :page_layout
end

get '/enemies' do
  erb :enemies, layout: :page_layout
end
