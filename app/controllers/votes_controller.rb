class VotesController < ApplicationController

  def create
    @current_link = Link.find(params[:link_id])
    @vote = @current_link.votes.create
    if @vote.valid?
      flash[:notice] = "Upvoted!"
      redirect_to links_path
    else
      flash[:alert]= "Failed!"
      redirect_to links_path
    end
  end

end
