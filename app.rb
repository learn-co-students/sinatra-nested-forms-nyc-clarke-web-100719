require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :new
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      @ship1 = params[:pirate][:ships][0]
      @ship2 = params[:pirate][:ships][1]
      erb :'../views/pirates/show'
    end

  end
end
