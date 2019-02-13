class ClipsController < ApplicationController
  def index
  	@clips = Clip.all
  end

  def create
    post = Post.find(params[:post_id])
    myclip = current_user.clips.new(post_id: post.id)
    myclip.save
    redirect_to post_path(post)
  end

  def destroy
    post = Post.find(params[:post_id])
    clip = current_user.clips.find_by(post_id: post.id)
    clip.destroy
    redirect_to post_path(post)
  end

end
