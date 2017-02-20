class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    @user = current_user
    @review = Review.new
    @review_rating = 0
    @product.reviews.each do |r|
      rating = r.rating.to_int
      @review_rating += rating
    end
    @review_average = @review_rating / @product.reviews.length
  end

  def new
    if !current_user.admin
      redirect_to root_path
    end
    @product = Product.new
  end

  def create
    @product = Product.create(product_params)
    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end

  def edit
    if !current_user.admin
      redirect_to root_path
    end
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
    if @product.save
      redirect_to product_path(@product)
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :price, :product_picture)
  end
end
