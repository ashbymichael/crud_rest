#index
get '/things' do
  @things = Thing.all

  erb :'/things/index'
end

#show
get '/things/:id' do
  @thing = Thing.find(params[:id])

  erb :'/things/show'
end

#new

#create

#edit

#update

#destroy
