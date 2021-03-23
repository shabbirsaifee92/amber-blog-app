class BlogController < ApplicationController
  getter blog = Blog.new

  before_action do
    only [:show, :edit, :update, :destroy, :like] { set_blog }
  end

  def index
    blogs = Blog.all
    render "index.slang"
  end

  def show
    render "show.slang"
  end

  def new
    render "new.slang"
  end

  def edit
    render "edit.slang"
  end

  def create
    blog = Blog.new blog_params.validate!
    if blog.save
      redirect_to action: :index, flash: {"success" => "Blog has been created."}
    else
      flash[:danger] = "Could not create Blog!"
      render "new.slang"
    end
  end

  def update
    blog.set_attributes blog_params.validate!
    if blog.save
      redirect_to action: :index, flash: {"success" => "Blog has been updated."}
    else
      flash[:danger] = "Could not update Blog!"
      render "edit.slang"
    end
  end

  def like
    blog.likes = blog.likes + 1
    if blog.save
      redirect_to action: :index, flash: {"success" => "You liked the blog."}
    else
      flash[:danger] = "Could not update Blog!"
      render "edit.slang"
    end
  end
  def destroy
    blog.destroy
    redirect_to action: :index, flash: {"success" => "Blog has been deleted."}
  end

  private def blog_params
    params.validation do
      required :title
      required :body
    end
  end

  private def set_blog
    @blog = Blog.find! params[:id]
  end
end
