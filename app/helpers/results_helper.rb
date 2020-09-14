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

end
