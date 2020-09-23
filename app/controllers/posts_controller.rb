class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :sort_desc, only: [:index, :table, :chair, :grill, :tent]
  def index
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
     @post = Post.find(params[:id])
  end

  def table
    @posts = Post.where(category_id: 2)
  end

  def chair
    @posts = Post.where(category_id: 4)
  end
  
  def grill
    @posts = Post.where(category_id: 3)
  end

  def tent
    @posts = Post.where(category_id: 5)
  end
  
  def sort_desc
    @posts = Post.all.order("created_at DESC")
  end

  private
  def post_params
    params.require(:post).permit(:image, :name, :description, :category_id, :price)
  end
end
