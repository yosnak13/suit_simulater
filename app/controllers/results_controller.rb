class ResultsController < ApplicationController
  # MAX_DISPLAY_RELATED_PRODUCTS = 3
  def result_suit
    @hope_suits = current_user.hope_suits.last
    case @hope_suits.suit_color
    when "ネイビー"
      @reccomend = "あなたの選んだ色はグレーなので、あなたに合うシャツは＿＿です"
      @image = image_tag "navy1.jpg" #imgのpathを記入 画像url書けばそれが映るのは確認済み
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
