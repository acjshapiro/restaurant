class Food < Sinatra::Base

  get '/' do
    erb :home
  end

  get "/meats/new" do
    erb :new
  end

  get "/meats" do
    @meat = Meat.all
    erb :meats
  end

  get "/meats/:id/edit" do
    @meat = Meat.find(params[:id])
    erb :edit
  end

  post "/meats" do
    Meat.create(name: params[:name], description: params[:description])
    redirect '/'
  end

  put "/meats/:id" do
    meat = Meat.find(params[:id])
    meat.update(name: params[:name], description: params[:description])
    redirect '/meats'
  end

  delete "/meats/:id" do
    Meat.find(params[:id]).destroy
    redirect "/meats"
  end   
end
