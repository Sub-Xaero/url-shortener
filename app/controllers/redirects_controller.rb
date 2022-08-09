class RedirectsController < ApplicationController

  def show
    @shortening = Shortening.find_by!(key: params[:key])
    redirect_to @shortening.url, status: :moved_permanently, allow_other_host: true
  end

end
