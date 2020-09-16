class HopesController < ApplicationController
  # def suit
  # end

  # def shirt
  # end

  # def tie
  # end

  def select_suit
    @hope_suits = HopeSuit.new
  end

  def shirt_select
  end

  def tie_select
  end

  def create
    @hope_suits = current_user.hope_suits.new(suits_params) #user_idを持たせる
    unless suits_params[:suit_color].present?
      flash.now[:notice] = "エラー：色を選んで下さい"
      render 'select_suit' and return
    end
    @hope_suits.save
    flash[:success] = "こちらです！"
    redirect_to result_suit_user_path
  end

  private
  def suits_params
    params.require(:hope_suit).permit(:suit_color)
  end
end
