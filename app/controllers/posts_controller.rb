class PostsController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :set_post, only: [:show, :update, :destroy]
  
    rescue_from ActiveRecord::RecordNotFound, with: :not_found_response
  
    def index
      @posts = Post.all
      render json: @posts
    end
  
    def show
      render json: @post
    end
  
    def create
      @post = Post.new(post_params)
  
      if @post.save
        render json: @post, status: :created
      else
        render json: @post.errors, status: :unprocessable_entity
      end
    end
  
    def update
      if @post.update(post_params)
        render json: @post
      else
        render json: @post.errors, status: :unprocessable_entity
      end
    end
  
    def destroy
      @post.destroy
      head :no_content
    end
  
    private
  
    def set_post
      @post = Post.find(params[:id])
    end
  
    def post_params
      params.require(:post).permit(:title, :content, :views, :likes, :category, :status, :slug, :published_at)
    end
  
    def not_found_response
      render json: { error: 'Record not found' }, status: :not_found
    end
  end
  