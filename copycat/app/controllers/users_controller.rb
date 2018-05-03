class UsersController < ApplicationController
  def new
  end

  def create

		@user = User.new
	 	@user.name = params[:name]

	  
	 	@user.save
	 	redirect_to user_path(@user)

  end

  def show
   
   if session[:user_id]

      @current_user = User.find(session[:user_id])

    end

  end

  def home

    if session[:user_id]

      @current_user = User.find(session[:user_id])

    end

  end


  def login

  end


  def check

    @current_user = User.where(name: params[:name]).first

    if @current_user

      session[:user_id] = @current_user.id

      flash[:info] = "Vous êtes maintenant connecté"

      redirect_to "/users/home"

    else

      session[:user_id] = nil

      flash[:info] = "Échec de la connexion"

      redirect_to "/new"

    end

  end
end
