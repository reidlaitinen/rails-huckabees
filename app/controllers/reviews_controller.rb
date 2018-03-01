class ReviewsController < ApplicationController

  before_action :set_item

  def new
    @review = @item.reviews.new
  end

  def create
    @review = @item.reviews.new(review_params)

    if @review.save
      redirect_to department_item_path(@item.department_id, @item)
    else
      render :new
    end
  end

  private
    def review_params
      params.require(:review).permit(:comment, :rating, :author)
    end

    def set_item
      @item = Item.find(params[:item_id])
    end
end
