class ResultsController < ApplicationController
  # MAX_DISPLAY_RELATED_PRODUCTS = 3
  def result_suit
    @hope_suits = current_user.hope_suits.last
    # if params[:hope_suits] == "チェック" || "ウィンドウペン"
    #   @shrit = Shirt.where(color: "白")
    # else
    #   @shirt = Shirt.where(color: "白").shuffle.take(MAX_DISPLAY_RELATED_PRODUCTS)
    # end
    case @hope_suits.suit_color
    when "ネイビー"
      @reccomend = img src="navy.jpg" 
    when "グレー"
      @reccomend = "あなたの選んだ色はグレーなので、あなたに合うシャツは＿＿です"
    when "ベージュ"
      @reccomend = "あなたの選んだ色はベージュなので、あなたに合うシャツは＿＿です"
    when "ブラック"
      @reccomend = "あなたの選んだ色はブラックなので、あなたに合うシャツは＿＿です"
    when "チェック"
      @reccomend = "あなたの選んだ色はチェックなので、あなたに合うシャツは＿＿です"
    when "ウィンドウペン"
      @reccomend = "あなたの選んだ色はウィンドウペンなので、あなたに合うシャツは＿＿です"
    end
  end

  def result_shirt
  end

  def result_tie
  end
end
