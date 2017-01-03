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
post '/things' do
  @thing = Thing.new(params[:thing])

  if @thing.save
    redirect "/things/#{@thing.id}"
  else
    #TODO show user an error message
    erb :'things/new'
  end
end

#edit
get '/things/:id/edit' do
  @thing = Thing.find(params[:id])

  erb :'things/edit'
end

#update
put '/things/:id' do
  @thing = Thing.find(params[:id])

  if @thing.update_attributes(params[:thing])
    redirect "/things/#{@thing.id}"
  else
    #TODO show users an error message
    erb :'/things/edit'
  end
end

#destroy
delete '/things/:id' do
  @thing = Thing.find(params[:id])

  if @thing.destroy
    redirect '/things'
  else
    #TODO show user an error message
    erb :'/things/show'
  end
end

#show
get '/things/:id' do
  @thing = Thing.find(params[:id])

  erb :'/things/show'
end
