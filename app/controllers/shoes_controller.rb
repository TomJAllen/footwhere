class ShoesController < ApplicationController
  def index
    @shoes = Shoe.all
  end
end
