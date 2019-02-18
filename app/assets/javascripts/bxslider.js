$(document).ready(function(){
  $('.bxslider').bxSlider({
    controls: true,       // 前後のコントロールを表示
    arrows : true,        //ナビゲーション矢印
    speed: 1000,          // スライドするスピード
    moveSlides: 4,        // 移動するスライド数
    maxSlides: 1,         // 一度に表示させる最大数
    slideWidth: 300,      // 各スライドの幅
  });
});