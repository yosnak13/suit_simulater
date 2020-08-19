//以下select_suit.html.erb
$(function () {
  $(".section").hide();
  $(".secList").on("click", function () {
    // クリックした要素の ID と違うクラス名のセクションを非表示
    $(".section").not($("." + $(this).attr("id"))).hide();
    // クリックした要素の ID と同じクラスのセクションを表示
    $("." + $(this).attr("id")).fadeIn(500);
  });
});

$(function () {
  $(".secList").hover(function () {
    $(this).css("height", "80px");
    $(this).css("width", "80px");
    $(this).css("margin-left", "10px");
    $(this).css("margin-right", "10px");
  },
    function () {
      $(this).css("height", "100px");
      $(this).css("width", "100px");
      $(this).css("margin-left", "0px");
      $(this).css("margin-right", "0px");
    });
});

$(".secList").on("click", function () {
  
});
