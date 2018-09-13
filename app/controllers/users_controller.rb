class UsersController < ApplicationController

def new
   @user = User.new
end

def index
end

def login_form
end

def login
  @user = User.find_by(email: params[:email], password: params[:password])
  if @user
    session[:user_id] = @user.id
     redirect_to("/")
     flash[:notice] = "ログインしました"
   else
      @error_message = "メールアドレスまたはパスワードが間違っています"
      @email = params[:email]
      @password = params[:password]
   end
 end

def logout
  session[:user_id] = nil
  flash[:notice] = "ログアウトしました"
  redirect_to("/")
end



def create
   @user = User.new(name: params[:name], email: params[:email], password: params[:password])
   if @user.save
     session[:user_id] = @user.id
     redirect_to("/")
   else
     render action: :new
   end
end

end
