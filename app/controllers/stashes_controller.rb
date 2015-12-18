class StashesController < ApplicationController
  
  before_action :find_stash, only: [:show, :edit, :update, :destroy]
  
  def index
    @stashes = Stash.all.order("created_at DESC")
  end
  
  def show
    
  end
  
  def new
    @stash = Stash.new
  end
  
  def create
    @stash = Stash.new(stash_params)
    
    if @stash.save
      redirect_to @stash, notice: "Stash successfully created"
    else
      render 'new'
    end
  end
  
  private
  
  def stash_params
    params.require(:stash).permit(:title, :description)
  end
  
  def find_stash
    @stash = Stash.find(params[:id])
  end
end
