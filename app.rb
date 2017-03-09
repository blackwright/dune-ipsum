require 'sinatra'
require 'sinatra/reloader' if development?
require './lib/paragraph'

get '/' do
  @text = Paragraph.new.text
  erb :index
end

post '/' do
  num_paragraphs = params[:paragraphs].to_i
  num_paragraphs = 5 if num_paragraphs > 5
  @text = Paragraph.new(num_paragraphs).text
  erb :index
end
