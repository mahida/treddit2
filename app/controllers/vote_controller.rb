class VoteController < ApplicationController
  def upvote
  	@link = Link.find(params[:id])
    @link.upvote_by current_user
    redirect_to :back
  end

  def downvote
  	@link = Link.find(params[:id])
    @link.downvote_from current_user
    redirect_to :back
  end
end
