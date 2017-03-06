class BeersController < ApplicationController

  def index
    @beers = Beer.all
    render "index.json.jbuilder"    
  end

  def create
    @beer = Beer.new(name: params[:name], yeast: params[yeast], alcohol: params[alcohol], blg: params[blg], hop: params[hop], ibu: params[ibu])
    @beer.save
    render json: @beer
  end

  def update
    @beer = Beer.find_by(id: params[:id])
    @beer.update_attributes(name: params[:name], bio: params[:bio])
    @beer.save
    render json: @beer
  end

  def destroy
    @beer = Beer.find_by(id: params[:id])
    @beer.destroy
    render json: {message: "Beer Deleted"}
  end
end