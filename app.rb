require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!


  get "/reversename/:name" do
    @name = params[:name]

    erb :reversename
  end

  get "/square/:number" do
    @number = params[:number].to_i

    #return (@number**2).to_s # <----- alternative way

    erb :square # <----- if HTML is needed(?)
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]

    erb :say
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    return params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."
  end

  get '/:operation/:number1/:number2' do
    
    erb :operation
  end
end