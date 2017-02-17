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
    binding.pry
    if @review.save
      redirect_to product_path(@product)
    else
      redirect_to product_path(@product)
    end
  end
private
  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
