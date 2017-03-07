require 'sinatra'
require 'sinatra/reloader' if development?
require './lib/generator'

helpers GeneratorHelper

get '/' do

end

get '/:paragraphs' do

end
