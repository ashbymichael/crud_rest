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
    erb :'/things/new'
  end
end

#edit

#update

#destroy

#show
get '/things/:id' do
  @thing = Thing.find(params[:id])

  erb :'/things/show'
end
