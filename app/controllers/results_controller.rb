class ResultsController < ApplicationController
  # MAX_DISPLAY_RELATED_PRODUCTS = 4
  def result_suits
    # if params[:hope_suits] == "チェック" || "ウィンドウペン"
    #   @shrit = Shirt.where(color: "白")
    # else
    #   @shirt = Shirt.where(color: "白").shuffle.take(MAX_DISPLAY_RELATED_PRODUCTS)
    # end
  end

  def result_shirt
  end

  def result_tie
  end
end
