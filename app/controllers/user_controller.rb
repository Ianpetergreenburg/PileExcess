enable :sessions

get '/user/new' do
  @user = User.new
  erb :'user/new'
end

post '/user' do
  @user = User.create(params[:user])
  if @user.persisted?
    redirect '/'
  else
    erb '/user/new'
  end
end

get '/user/login' do
  @user = User.new
  erb :'user/login'
end

post '/user/login' do
  @user = User.find_by(username: params[:username]).try(authenticate)
  erb :'user/login'
end

get '/user/logout' do

end
