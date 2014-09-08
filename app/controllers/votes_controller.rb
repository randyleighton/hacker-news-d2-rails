class VotesController < ApplicationController

  def create
    @current_link = Link.find(params[:link_id])
    @current_link.vote.new(params[:vote])
    if @vote.save
      flash[:notice] = "Upvoted!"
      redirect_to links_path
    else
      flash[:alert]= "Failed!"
      redirect_to links_path
    end
  end

end
