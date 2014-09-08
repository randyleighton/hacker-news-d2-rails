class LinksController < ApplicationController

  before_filter :authorize, only: [:new, :edit, :update]

  def index
    @links = Link.all
  end

  def new
    @link = Link.new
  end

  def create
    @link = Link.new(link_params)
    # @link.user_id = current_user.id
    if @link.save
      flash[:notice] = "Created Successfully."
      redirect_to links_path
    else
      render 'new'
    end
  end

  def show
    @link = Link.find(params[:id])
  end

  def edit
    @link = Link.find(params[:id])
  end

  def update
    @link = Link.find(params[:id])
    if @link.update(link_params)
      flash[:notice] = "Updated Successfully."
      redirect_to link_path(@link)
    else
      render 'edit'
    end
  end

  def destroy
    @link = Link.find(params[:id])
    @link.destroy
    flash[:notice] = "Removed Successfully."
    redirect_to links_path
  end

  private

  def link_params
    params.require(:link).permit(:name, :url, :datetime, :user_id)
  end

end
