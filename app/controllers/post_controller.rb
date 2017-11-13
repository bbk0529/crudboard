class PostController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
  end

  def create
    @title = params['title']
    @content = params['content']
    if session['email']
      @email = session['email']
      user=User.find_by(email: @email)
      @user_id=user.id
    end

    Post.create(
      title: @title,
      content: @content,
      user_id: session['id']
    )
    redirect_to '/'
  end

  def show

    @id=params[:id]
    @post=Post.find(@id)
    @user=User.find(@post.user_id)
    @comments = @post.comments


  end

  def modify
    @id=params[:id]
    @post=Post.find(@id)
  end

  def update
    @id=params[:id]
    @title = params['title']
    @content = params['content']
    post=Post.find(@id)
    post.update(
      title: @title,
      content: @content
    )
    redirect_to "/post/show/#{@id}"
  end

  def destroy
    @id=params[:id]
    post=Post.find(@id)
    post.destroy
    redirect_to '/'
  end

  def create_comment
    @name=params['name']
    @comment=params['comment']

    Comment.create(
      post_id: params[:post_id],
      name: @name,
      comment: @comment
    )
    redirect_back fallback_location: "/post/show/#{params[:post_id]}"
  end

end
