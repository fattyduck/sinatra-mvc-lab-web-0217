require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @pig_latin_phrase = PigLatinizer.new.to_pig_latin(params[:user_phrase])
    erb :results
  end

end
