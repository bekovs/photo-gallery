class PostsController < ApplicationController
  
	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def edit
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end


	def create
		if user_signed_in?
	    @post = Post.new(post_params)
	    if @post.save
	        flash[:success] = "Post created"  
	    else
	        flash[:error] = "Error : Invalid post description"  
	        render 'new'
	    end
	    redirect_to root_path
		else
			redirect_to root_path
		end
	end	

	def update
		if current_user == @user
	    @post = Post.find(params[:id])

	    if @post.update(post_params)
	      redirect_to @post
	    else
	      render 'edit'
	    end
	  else
	  	redirect_to root_path
	  end
  end

	def destroy
		if current_user == @user
			Post.destroy(params[:id])
			redirect_to root_path
		else
			redirect_to root_path
		end
	end

	private

	def post_params
		params.require(:post).permit(:title, :image, :comment_id, :user_id)
	end
end
