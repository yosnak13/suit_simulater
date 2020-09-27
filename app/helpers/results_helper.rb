module ResultsHelper
  def explanation
    "ジャケット、ネクタイ、シャツの柄の総数は1〜1.5個がちょうどいいと言われています
    （柄ありを1、柄なしを0、素材と模様が同系色なら0.5とした場合）"
  end

  def pattern
    if @hope_suits.suit_color == "チェック" || @hope_suits.suit_color == "ウィンドウペン"
      "柄のあるスーツなら、ネクタイかシャツを無地にすることで"
    else
      "無地のスーツなら、ネクタイかシャツどちらかに柄ありを使うことで"
    end
  end

  def result_s(obj)
    if obj == "ネイビー"
      "ネイビースーツが選ばれました"
    elsif obj == "グレー"
      "グレースーツが選ばれました"
    elsif obj == "ブラック"
      "ブラックスーツが選ばれました"
    elsif obj == "ベージュ"
      "ベージュスーツが選ばれました"
    elsif obj == "チェック"
      "チェックスーツが選ばれました"
    elsif obj == "ウィンドウペン"
      "ウィンドウペンスーツが選ばれました"
    end
  end

  def shirt_pattern
    if @hope_shirts.shirt_pattern == "ストライプ"
      "柄のあるシャツなら、ネクタイかシャツを無地にすることで"
    else
      "無地のシャツなら、ネクタイかシャツどちらかに柄ありを使うことで"
    end
  end

end
