class HopesController < ApplicationController
  def suit
  end

  def shirt
  end

  def tie
  end

  def select_suit
    @hope_suits = HopeSuit.new
  end

  def shirt_select
  end

  def tie_select
  end

  def create
    @hope_suits = HopeSuit.new(params[:hope_suits]) #hope_suitsモデルのハッシュ？
    if @hope_suits.save #submitを押したら達成する
      redirect_to result_suit_user_path
    else
      flash[:notice] = "色を選んで下さい"
      render 'select_suit'
    end
  end
end
