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
    @hope_suits = current_user.hope_suits.new(suits_params) #user_id
    #@hope_suitsにはidが必要？引数はidで合ってる？
    if @hope_suits.save
      flash[:success] = "成功しました！"
      redirect_to result_suit_user_path
    else
      flash.now[:notice] = "エラー：色を選んで下さい"
      render 'select_suit'
    end
  end
end

  private
def suits_params
  params.require(:hope_suit).permit(:suit_color)
end
#@user ---<- @hope_suits
