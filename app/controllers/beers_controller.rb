class BeersController < ApplicationController

  def index
    @beers = Beer.all
    render "index.json.jbuilder"    
  end
end