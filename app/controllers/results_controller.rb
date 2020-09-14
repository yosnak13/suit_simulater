class ResultsController < ApplicationController
  # MAX_DISPLAY_RELATED_PRODUCTS = 3
  def result_suit
    @hope_suits = current_user.hope_suits.last
    case @hope_suits.suit_color
    when "ネイビー"
      @reccomend = "ネイビースーツが選ばれました"
      @image = URI("/assets/navy1.jpg")
    when "グレー"
      @reccomend = "グレースーツが選ばれました"
      @image = URI("/assets/right-gray1.jpg")
    when "ベージュ"
      @reccomend = "ベージュスーツが選ばれました"
      @image = URI("/assets/beige1.jpg")
    when "ブラック"
      @reccomend = "ブラックスーツが選ばれました"
      @image = URI("/assets/black1.jpg")
    when "チェック"
      @reccomend = "チェック柄スーツが選ばれました"
      @image = URI("/assets/check1.jpg")
    when "ウィンドウペン"
      @reccomend = "ウィンドウペン柄スーツが選ばれました"
      @image = URI("/assets/windowp1.jpg")
    end
  end

  def result_shirt
  end

  def result_tie
  end
end
