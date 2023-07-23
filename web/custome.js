//Detail slider
$('.member-slider').slick({
    slidesToShow: 3,
    slidesToScroll: 1,
    arrows:true,
    dots:false,
    autoplay: true,
    autoplaySpeed: 2000,
    responsive: [
      {
        breakpoint: 1024,
        settings: {
          slidesToShow: 3,
          slidesToScroll: 3,
          autoplay: true,
          dots: false
        }
      },
      {
        breakpoint: 600,
        settings: {
          slidesToShow: 2,
          slidesToScroll: 2,
          autoplay: true,
          dots: false
        }
      },
      {
        breakpoint: 480,
        settings: {
          slidesToShow: 1,
          slidesToScroll: 1,
          autoplay: true,
          dots: false
        }
      }
      // You can unslick at a given breakpoint now by adding:
      // settings: "unslick"
      // instead of a settings object
    ]
  });
  
  
  //Detail slider
  $('.award-slider').slick({
    slidesToShow: 4,
    slidesToScroll: 1,
    arrows:true,
    dots:false,
    autoplay: true,
    autoplaySpeed: 2000,
    responsive: [
      {
        breakpoint: 1024,
        settings: {
          slidesToShow: 3,
          slidesToScroll: 3,
          autoplay: true,
          dots: false
        }
      },
      {
        breakpoint: 600,
        settings: {
          slidesToShow: 2,
          slidesToScroll: 2,
          autoplay: true,
          dots: false
        }
      },
      {
        breakpoint: 480,
        settings: {
          slidesToShow: 1,
          slidesToScroll: 1,
          autoplay: true,
          dots: false
        }
      }
      // You can unslick at a given breakpoint now by adding:
      // settings: "unslick"
      // instead of a settings object
    ]
  });
  
  $('.social-slider').slick({
      autoplay: true,
      autoplaySpeed: 2000,
      dots:false,
  });
  $('.ads-slider').slick({
      autoplay: true,
      autoplaySpeed: 7000,
      dots:false,    
      arrows: false,
      adaptiveHeight: false
  });
  
  $('.verticle-slider').slick({
      slidesToShow: 3,
      autoPlay:true,
      dots: false,
      arrows: false,
      vertical: true,
      autoplay: true,
      autoplaySpeed: 2000,
  }); 
  
  // side bar code 
  function openNav() {
    document.getElementById("mySidenav").style.width = "100%";
  }
  
  function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
  }