$(document).on('turbolinks:load', function () {
  $(function () {
    /* SP menu */
    function toggleNav() {
      var body = document.body;
      var hamburger = document.getElementById('nav_btn');
      var blackBg = document.getElementById('nav_bg');
      hamburger.addEventListener('click', function () {
        body.classList.toggle('nav_open'); //メニュークリックでnav-openというクラスがbodyに付与
      });
      blackBg.addEventListener('click', function () {
        body.classList.remove('nav_open'); //もう一度クリックで解除
      });
    }
    toggleNav();
  });
  

  $(window).scroll(function () {
    $('.fadein').each(function () {
      var elemPos = $(this).offset().top,
        scroll = $(window).scrollTop(),
        windowHeight = $(window).height();
      if (scroll > elemPos - windowHeight + 100) {
        $(this).addClass('scrollin');
      }
    });
  });
  //hopes_view
  $(function () {
    //クリックした要素のidをsubmitのvalueにする
    $(".sub-box").on("click", function () {
      var result = $(this).attr("id");
      document.querySelector("#submit").value = result;
    });

    //image_tagを隠し、色をクリックしたら出現させる
    $(".section").hide();
    $(".secList").on("click", function () {
      // クリックした要素の ID と違うクラス名のセクションを非表示
      $(".section").not($("." + $(this).attr("id"))).hide();
      // クリックした要素の ID と同じクラスのセクションを表示
      $("." + $(this).attr("id")).fadeIn(500);
    });

    //ホバーアクション
    $(".secList").hover(function () {
      $(this).css("height", "70px");
      $(this).css("width", "70px");
      $(this).css("margin-left", "10px");
      $(this).css("margin-right", "10px");
    },
      function () {
        $(this).css("height", "90px");
        $(this).css("width", "90px");
        $(this).css("margin-left", "0px");
        $(this).css("margin-right", "0px");
      });
  });

  //results_view
  $(window).scroll(function () {
    $('.fadein').each(function () {
      var elemPos = $(this).offset().top,
        scroll = $(window).scrollTop(),
        windowHeight = $(window).height();
      if (scroll > elemPos - windowHeight + 50) {
        $(this).addClass('scrollin');
      }
    });
  });
});
