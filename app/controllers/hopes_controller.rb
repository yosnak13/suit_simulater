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
    @hope_suits = HopeSuit.new
    if @hope_suits.save
      redirect_to result_suit_url
    else
      render 'select_suit'
    end
  end
end
