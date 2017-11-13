class UserController < ApplicationController
  def index
    @users = User.all

  end

  def new
  end

  def create
    @email=params['email']
    @password=params['password']

    User.create(
      email:@email,
      password:@password
    )
    redirect_to '/'
  end

  def show
  end

  def logout
    session.clear
    flash[:notice] = 'Logged out successfully'
    redirect_to '/'
  end

  def login
  end

  def login_process

      @email = params['email']
      @password = params['password']
      user = User.find_by(email: @email)
      @id = user.id

      if user
        if user.password == @password
          session['id']=@id
          flash[:notice] = 'Logged in successfully'
          redirect_to '/'
        else
          flash[:notice] = 'wrong password given'
          @result = '비밀번호가 잘못되었습니다.'
          redirect_to '/user/login'
        end
      else
        @result = '아이디가 잘못되었거나 가입이 안 되어 있습니다. '
      end
  end


end
