class Admin::PostsController < AdminController

  def index
    @posts = Post.all.paginate(page: params[:page], per_page: 50)
    render :index
  end
  

  def new
    @post = Post.new
  end

  def create
    post_params = params.require(:post).permit(:brand, :product, :url, :image_url, :image)
    @post = Post.new(post_params)

    puts "createing..."

    if @post.save
      redirect_to posts_path
    else
      flash[:error] = @post.full_messages[0]
    end
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def destroy
    Post.find_by(id: params[:id]).destroy
    flash[:success] = "Post Deleted"
    redirect_to admin_posts_path

  end
end
