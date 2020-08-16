class HopesController < ApplicationController
  def suit

  end

  def shirt
  end

  def tie
  end

  def select_suit
    @xxx = HopeSuit.new
  end

  def shirt_select
  end

  def tie_select
  end

  def create
    @hope_suit = HopeSuit.new(xxx)
    if @hope_suit.save
      redirect_to result_suit_url
    else
      render 'new'
    end
  end
end
