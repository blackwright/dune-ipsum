require 'sinatra'
require 'sinatra/reloader' if development?
require './lib/quote'
require './lib/paragraph'

get '/' do
  @quote = Quote.new.text
  @text = Paragraph.new.text
  erb :index
end

post '/' do
  num_paragraphs = params[:paragraphs].to_i
  num_paragraphs = 5 if num_paragraphs > 5
  @quote = Quote.new.text
  @text = Paragraph.new(num_paragraphs).text
  erb :index
end
