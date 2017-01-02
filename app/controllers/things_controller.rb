#index
get '/things' do
  @things = Thing.all

  erb :'/things/index'
end

#new
get '/things/new' do
  erb :'/things/new'
end

#create

#edit

#update

#destroy

#show
get '/things/:id' do
  @thing = Thing.find(params[:id])

  erb :'/things/show'
end
