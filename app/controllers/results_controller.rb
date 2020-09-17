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
      @tie3 = "無地（同系色柄）のネクタイ"
      @shirt_img1 = URI("https://www.llbean.co.jp/dw/image/v2/BCSL_PRD/on/demandware.static/-/Sites-llbean-master-catalog/ja_JP/dw11e8fc00/images/Product/209410_00047_S.JPG?sw=240")
      @shirt_img2 = URI("https://www.llbean.co.jp/dw/image/v2/BCSL_PRD/on/demandware.static/-/Sites-llbean-master-catalog/ja_JP/dw86804afd/images/Product/291653_00718_S.JPG?sw=240")
      @shirt_img3 = URI("https://www.llbean.co.jp/dw/image/v2/BCSL_PRD/on/demandware.static/-/Sites-llbean-master-catalog/ja_JP/dwcc34999e/images/Product/300554_38714_S.JPG?sw=240")
      @tie_img1 = URI("https://d1ganai0pp77c0.cloudfront.net/img/goods/1/ECKS261AAR.jpg")
      @tie_img2 = URI("https://d1ganai0pp77c0.cloudfront.net/img/goods/1/TIETES2AAS.jpg")
      @tie_img3 = URI("https://d1ganai0pp77c0.cloudfront.net/img/goods/1/NVKS051FAS.jpg")
    else
      @shirt1 = "白のシャツ"
      @shirt2 = "青のシャツ"
      @shirt3 = "ストライプのシャツ"
      @tie1 = "ストライプのネクタイ"
      @tie2 = "ペイズリーのネクタイ"
      @tie3 = "ドットのネクタイ"
      @shirt_img1 = URI("https://www.llbean.co.jp/dw/image/v2/BCSL_PRD/on/demandware.static/-/Sites-llbean-master-catalog/ja_JP/dwc794d1de/images/Product/291655_00464_S.JPG?sw=240")
      @shirt_img2 = URI("https://www.llbean.co.jp/dw/image/v2/BCSL_PRD/on/demandware.static/-/Sites-llbean-master-catalog/ja_JP/dw11e8fc00/images/Product/209410_00047_S.JPG?sw=240")
      @shirt_img3 = URI("https://www.llbean.co.jp/dw/image/v2/BCSL_PRD/on/demandware.static/-/Sites-llbean-master-catalog/ja_JP/dwe376dfd9/images/Product/256535_00047_S.JPG?sw=240")
      @tie_img1 = URI("https://d1ganai0pp77c0.cloudfront.net/img/goods/1/ECKS267AAR.jpg")
      @tie_img2 = URI("https://d1ganai0pp77c0.cloudfront.net/img/goods/1/ECKS161AAP.jpg")
      @tie_img3 = URI("https://d1ganai0pp77c0.cloudfront.net/img/goods/1/ECKS064AAD.jpg")
    end
  end

  def result_shirt
  end

  def result_tie
  end
end
