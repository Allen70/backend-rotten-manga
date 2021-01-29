class UserRatingsController < ApplicationController
  before_action :set_user_rating, only: [:show, :update, :destroy]

  def index
    @user_ratings = UserRating.all

    render json: @user_ratings
  end

  def show
    render json: @user_rating
  end

  def create
    @user_rating = UserRating.new(user_rating_params)

    if @user_rating.save
      render json: @user_rating, status: :created, location: @user_rating
    else
      render json: @user_rating.errors, status: :unprocessable_entity
    end
  end

  def update
    if @user_rating.update(user_rating_params)
      render json: @user_rating
    else
      render json: @user_rating.errors, status: :unprocessable_entity
    end
  end


  def destroy
    @user_rating.destroy
  end

  private

    def set_user_rating
      @user_rating = UserRating.find(params[:id])
    end


    def user_rating_params
      params.require(:user_rating).permit(:rating, :hero_journey, :power_fantasy, :world_building)
    end
end