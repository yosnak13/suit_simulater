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

  def recomemded_shirt
    if @hope_suits.suit_color == "チェック" || @hope_suits.suit_color == "ウィンドウペン"
      # URI("/assets/beige1.jpg")
      URI("https://www.llbean.co.jp/on/demandware.static/-/Sites-llbean-master-catalog/ja_JP/dw823ded91/images/Product/256513_00047_S.JPG")
    else
      URI("https://www.llbean.co.jp/dw/image/v2/BCSL_PRD/on/demandware.static/-/Sites-llbean-master-catalog/ja_JP/dw2cc95042/images/Product/209411_00047_S.JPG?sw=539")
    end
  end

  def recomemded_tie
    if @hope_suits.suit_color == "チェック" || @hope_suits.suit_color == "ウィンドウペン"
      URI("")
    else
      URI("")
    end
  end
end
