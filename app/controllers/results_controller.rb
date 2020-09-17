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

    if @hope_suits.suit_color == "チェック" || @hope_suits.suit_color == "ウィンドウペン"
      @shirt1 = "無地の白のシャツ"
      @shirt2 = "無地の青のシャツ"
      @shirt3 = "無地の黒のシャツ"
      @tie1 = "ストライプのネクタイ"
      @tie2 = "無地のネクタイ"
      @tie3 = "ドットのネクタイ"
    else
      @shirt1 = "白のシャツ"
      @shirt2 = "青のシャツ"
      @shirt3 = "ストライプのシャツ"
      @tie1 = "ストライプのネクタイ"
      @tie2 = "ペイズリーのネクタイ"
      @tie3 = "無地のネクタイ"
    end
  end

  def result_shirt
  end

  def result_tie
  end
end
