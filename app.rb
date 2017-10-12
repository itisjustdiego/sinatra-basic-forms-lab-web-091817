require_relative 'config/environment'

class App < Sinatra::Base

  get "/" do
    erb :index
  end

  post "/" do
    @puppy = Puppy.new(params[:name], params[:breed], params[:age])
    erb :display_puppy
  end

  get "/new" do
    # binding.pry
    erb :create_puppy
  end

end
