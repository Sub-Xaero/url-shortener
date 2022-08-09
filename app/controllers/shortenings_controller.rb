class ShorteningsController < ApplicationController
  before_action :set_shortening, only: %i[ show edit update destroy ]

  def index
    @shortenings = Shortening.all.in_recency_order.limit(10)
  end

  def show
  end

  def new
    @shortening = Shortening.new
  end

  def edit
  end

  def create
    url = params.require(:shortening).require(:url)

    if (@shortening = ::UrlShortenerService.create_short_mapping!(url))
      redirect_to shortening_url(@shortening.key), notice: "Short url was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @shortening.update(shortening_params)
      redirect_to shortening_url(@shortening.key), notice: "Short url was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @shortening.destroy

    redirect_to shortenings_url, notice: "Short url was successfully destroyed."
  end

  private

  def set_shortening
    @shortening = Shortening.find_by!(key: params[:id])
  end

  def shortening_params
    params.require(:shortening).permit(:url, :key)
  end
end
