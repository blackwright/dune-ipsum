require 'sinatra'
require 'sinatra/reloader' if development?
require "./helpers/dune_helper"
require './lib/paragraph'

helpers DuneHelper

get '/' do
  @dune = Paragraph.new.text
  erb :index
end

get '/:paragraphs' do

end
