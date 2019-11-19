require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        pigLatinizer = PigLatinizer.new
        # pigLatinizer.user_phrase = params[:user_phrase]
        @converted_string = pigLatinizer.piglatinize(params[:user_phrase])
        
        erb :piglatinize
    end
end