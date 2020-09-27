class HopesShirtController < ApplicationController
  def select_shirt
    @hope_shirts = HopeShirt.new
  end

  def create
    @hope_shirts = current_user.hope_shirts.new(shirts_params)
    unless shirts_params[:shirt_pattern].present?
      flash.now[:notice] = "エラー：色を選んで下さい"
      render 'select_shirt' and return
    end
    @hope_shirts.save
    flash[:success] = "こちらです！"
    redirect_to result_shirt_user_path
  end

  private
  def shirts_params
    params.require(:hope_shirt).permit(:shirt_pattern)
  end
end
