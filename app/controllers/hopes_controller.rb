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
    @hope_suits = HopeSuit.new(params[:id])
    #@hope_suitsにはidが必要、引数はidで合ってる？
    if @hope_suits.save
      redirect_to result_suit_user_path
    else
      flash[:notice] = "色を選んで下さい"
      render 'select_suit'
    end
  end
end
#@user ---<- @hope_suits
#@hope_suits = HopeSuit.new(params[:id]これおかしい？
