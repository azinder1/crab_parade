class ReviewsController < ApplicationController
  def new
    @user = current_user
    @review - Review.new
  end
  def create
    @user = current_user
    @product =Product.find(params[:product_id])
    @review = @product.reviews.new(review_params)
    @review[:user_id] = @user.id

    if @review.save
      redirect_to product_path(@product)
    else
      redirect_to product_path(@product)
    end
  end

  def edit
    @product = Product.find(params[:product_id])
    @review = Review.find(params[:id])
  end

  def update
    @product = Product.find(params[:product_id])
    @review = Review.find(params[:id])
    @review.update(review_params)
    if @product.save
      redirect_to product_path(@product)
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to product_path(@product)
  end

private
  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
