class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user,
                  notice: 'Cadastro criado com sucesso!'
    else
      render action: :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end
  # MÉTODOS PRIVADOS
  private
  
  def user_params
    params.
      require(:user).
      permit(:email, :user_name, :password, :password_confirmation)
  end

end