class CommentsController < ApplicationController


  def create
    @comment = Comment.new
    puts("estiveaqui")
    puts("estiveaqui")
    puts("estiveaqui")
    puts("estiveaqui")
    puts("estiveaqui")
    puts("estiveaqui")
    puts("estiveaqui")
    
  end

  private
    def get_params
      params.require(:comment).permit(:message,:animal_id)
    end
end
