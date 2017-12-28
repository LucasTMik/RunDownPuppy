class CommentsController < ApplicationController


  def create
    @comment = Comment.new(get_params)
    @comment.user_id = current_user.id

    @comment.save

    redirect_back(fallback_location: root_path)

  end

  private
    def get_params
      params.require(:comment).permit(:message,:animal_id)
    end


end
