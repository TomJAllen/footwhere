class ShoesController < ApplicationController
  before_action :set_shoe, only: [:show, :edit, :update, :destroy]

  def index
    @shoes = Shoe.all
  end

  def new
    @shoe = Shoe.new
  end

  def edit
  end

  def destroy
    @shoe.destroy
    redirect_to shoes_url, notice: 'Shoe was successfully deleted.'
  end

  def show
  end

  def create
    @shoe = Shoe.new(shoe_params)
    @user = current_user
    @shoe.user = @user

    if @shoe.save
      redirect_to @shoe, notice: 'Shoe was successfully created.'
    else
      render :new
    end
  end

  def update
    if @shoe.update(shoe_params)
      redirect_to @shoe, notice: 'Shoe was successfully updated.'
    else
      render :edit
    end
  end

  private

  def set_shoe
    @shoe = Shoe.find(params[:id])
  end

  def shoe_params
    params.require(:shoe).permit(:title, :brand, :size, :category, :price, :image_url, :photo)
  end
end
