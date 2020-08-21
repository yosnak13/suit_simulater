class HopesController < ApplicationController

  def suit
  end

  def shirt
  end

  def tie
  end

  def select_suit
    @suit_color = HopeSuit.new
  end

  def shirt_select
  end

  def tie_select
  end

  def create
    @hope_suit = HopeSuit.new(suit_color)
    if @hope_suit.save
      redirect_to result_suit_url
    else
      render 'new' #多分newアクションはないので後に削除
    end
  end
end
