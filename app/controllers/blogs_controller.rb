class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit,:update,:destroy]
  before_action :authenticate_user!

  def index
    @blogs = Blog.all
    respond_to do |format|
      format.html
      format.js
    end
  end

  def show
    @comment = @blog.comments.build
    @comments = @blog.comments
  end

  def new
    @blog = Blog.new
  end

  #@blog = Blog.create(blogs_params)
  #@blog.user_id = current_user.id
  def create
    @blog = current_user.blogs.build(blogs_params)
    if @blog.save
      redirect_to blogs_path, notice: "ブログを作成しました！"
      NoticeMailer.sendmail_blog(@blog).deliver
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @blog.update(blogs_params)
      redirect_to blogs_path, notice: "ブログを更新しました！"
    else
      render 'edit'
    end
  end

  def destroy
    @blog.destroy
    redirect_to blogs_path, notice: "ブログを削除しました！"
  end

private
  def blogs_params
    params.require(:blog).permit(:title, :content,:avatar)
  end

  def set_blog
    @blog = Blog.find(params[:id])
  end
end
