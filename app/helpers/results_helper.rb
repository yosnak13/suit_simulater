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
      "柄のあるシャツなら、ネクタイかスーツを無地にすることで"
    else
      "無地のシャツなら、ネクタイかスーツどちらかに柄ありを使うことで"
    end
  end

  def result_sh(obj)
    if obj == "白無地"
      "白無地のシャツが選ばれました"
    elsif obj == "青無地"
      "青無地のシャツが選ばれました"
    elsif obj == "ストライプ"
      "ストライプのシャツが選ばれました"
    end
  end

  def tie_pattern
    if @hope_ties.tie_pattern == "ストライプ" || "同系色模様"
      "無地のネクタイなら、スーツかシャツどちらかに柄を使うことで"
    else
      "柄のあるネクタイなら、スーツかシャツを無地にすることで"
    end
  end

  def result_ti(obj)
    if obj == "無地"
      "無地のネクタイが選ばれました"
    elsif obj == "ドット"
      "ドットのネクタイが選ばれました"
    elsif obj == "ストライプ"
      "ストライプのネクタイが選ばれました"
    elsif obj == "同系色模様"
      "同系色模様のネクタイが選ばれました"
    elsif obj == "ペイズリー"
      "ペイズリーのネクタイが選ばれました"
    elsif obj == "小紋"
      "小紋のネクタイが選ばれました"
    end
  end
end
