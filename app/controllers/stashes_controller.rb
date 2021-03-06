class StashesController < ApplicationController
  
  before_action :find_stash, only: [:show, :edit, :update, :destroy, :upvote]
  before_action :authenticate_user!, except: [:index, :show]
  def index
    @stashes = Stash.all.order("created_at DESC")
  end
  
  def show
    
  end
  
  def new
    @stash = current_user.stashes.build
  end
  
  def create
    @stash = current_user.stashes.build(stash_params)
    
    if @stash.save
      redirect_to @stash, notice: "Stash successfully created"
    else
      render 'new'
    end
  end
  
  def edit
  end
  
  def update
    if @stash.update(stash_params)
      redirect_to @stash, notice: "Stash successfully updated"
    else
      render 'edit'
    end
  end
  
  def destroy
    @stash.destroy
    redirect_to root_path
  end
  
  def upvote
    @stash.upvote_by current_user
    redirect_to :back
  end
  
  private
  
  def stash_params
    params.require(:stash).permit(:title, :description, :image)
  end
  
  def find_stash
    @stash = Stash.find(params[:id])
  end
end
