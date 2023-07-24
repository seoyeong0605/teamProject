<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
    <link rel="stylesheet" href="uuss.css" type="text/css">
</head>
<body>

            <div class="navbar-nav">
              <a class="nav-link" href="${pageContext.request.contextPath}/shop/order">장바구니</a>
              <a class="nav-link" href="${pageContext.request.contextPath}/member/login">로그인</a>
              <a class="nav-link" href="${pageContext.request.contextPath}/member/custom_signup">회원가입</a>
            </div>
        
<div class="imgarea">
    <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
      <div class="carousel-indicators">
      <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
      <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
      <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
      </div>
          <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="  https://p4.wallpaperbetter.com/wallpaper/803/322/368/poodle-puppy-flowers-wallpaper-preview.jpg" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                <h5><b>Happy</b></h5>
                <p>저희 Lovely Dog은 반려동물에게 행복을 전달해줍니다.</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="   https://p4.wallpaperbetter.com/wallpaper/783/920/40/puppy-dog-bokeh-bubble-wallpaper-preview.jpg" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                <h5><b>Play</b></h5>
                <p>반려동물의 최적화된 환경을 제공함으로써 즐거움을 전달해줍니다.</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="https://p4.wallpaperbetter.com/wallpaper/8/987/707/golden-retriever-puppy-lying-collar-wallpaper-preview.jpg" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                <h5><b>Comfortable</b></h5>
                <p>반려동물의 최적화된 환경을 제공함으로써 편안함을 제공해줍니다.</p>
                </div>
            </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Previous</span>
              </button>
              <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Next</span>
              </button>
              </div>
            </div>
            
            <div class="search"> <!--제품 검색-->
                <input type="text" class="shopSearch" placeholder="쇼핑 검색">
            </div>
            <div class="kategorie"> <!--카테고리-->
                <div class="kategorie1" onclick="">사료</div>
                <div class="kategorie2">간식</div>
                <div class="kategorie3">장난감</div>
                <div class="kategorie4">샴푸/비누</div>
            </div>
     
        <section class="products">
            <div class="products-container">
                <div class="product">
                    <img src="https://img.dogpre.com/mobile/dogpre/product/93/92557_detail_01825903.png" alt="Product 1">
                    <h3 class="product-title">오리</h3>
                    <p class="product-price">30,000원</p>
                    <button class="add-to-cart">장바구니에 추가</button>
                </div>
                <div class="product">
                    <img src="https://cdn.imweb.me/thumbnail/20230330/3382dd772b05b.png" alt="Product 2">
                    <h3 class="product-title">야광클립</h3>
                    <p class="product-price">30,000원</p>
                    <button class="add-to-cart">장바구니에 추가</button>
                </div>
                <div class="product">
                    <img src="https://cdn.imweb.me/thumbnail/20230120/9607e61c7532b.jpg" alt="Product 1">
                    <h3 class="product-title">샴푸</h3>
                    <p class="product-price">30,000원</p>
                    <button class="add-to-cart">장바구니에 추가</button>
                </div>
                <div class="product">
                    <img src="https://cdn.imweb.me/thumbnail/20230615/5c7ff612db0bb.png" alt="Product 2">
                    <h3 class="product-title">사료</h3>
                    <p class="product-price">30,000원</p>
                    <button class="add-to-cart">장바구니에 추가</button>
                </div>
                <div class="product">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMvS1P-rIdbDo9I0dmyeq3GEMAHEhKpkyXtsmI-lVsujADcdk-txYY5OZwMT2iyD75Hok&usqp=CAU" alt="Product 1">
                    <h3 class="product-title">장난감</h3>
                    <p class="product-price">30,000원</p>
                    <button class="add-to-cart">장바구니에 추가</button>
                </div>
                <div class="product">
                    <img src="https://shopping-phinf.pstatic.net/main_8236601/82366017734.3.jpg?type=f300" alt="Product 2">
                    <h3 class="product-title">상품 6</h3>
                    <p class="product-price">30,000원</p>
                    <button class="add-to-cart">장바구니에 추가</button>
                </div>
                <div class="product">
                    <img src="https://img.dogpre.com/mobile/dogpre/product/93/92557_detail_01825903.png" alt="Product 1">
                    <h3 class="product-title">상품 7</h3>
                    <p class="product-price">30,000원</p>
                    <button class="add-to-cart">장바구니에 추가</button>
                </div>
                <div class="product">
                    <img src="https://img.dogpre.com/mobile/dogpre/product/93/92557_detail_01825903.png" alt="Product 2">
                    <h3 class="product-title">상품 8</h3>
                    <p class="product-price">30,000원</p>
                    <button class="add-to-cart">장바구니에 추가</button>
                </div>
                <div class="product">
                    <img src="https://img.dogpre.com/mobile/dogpre/product/93/92557_detail_01825903.png" alt="Product 1">
                    <h3 class="product-title">상품 9</h3>
                    <p class="product-price">30,000원</p>
                    <button class="add-to-cart">장바구니에 추가</button>
                </div>
                <div class="product">
                    <img src="https://img.dogpre.com/mobile/dogpre/product/93/92557_detail_01825903.png" alt="Product 2">
                    <h3 class="product-title">상품 10</h3>
                    <p class="product-price">30,000원</p>
                    <button class="add-to-cart">장바구니에 추가</button>
                </div>
                <div class="product">
                    <img src="https://img.dogpre.com/mobile/dogpre/product/93/92557_detail_01825903.png" alt="Product 1">
                    <h3 class="product-title">상품 11</h3>
                    <p class="product-price">30,000원</p>
                    <button class="add-to-cart">장바구니에 추가</button>
                </div>
                <div class="product">
                    <img src="https://img.dogpre.com/mobile/dogpre/product/93/92557_detail_01825903.png" alt="Product 2">
                    <h3 class="product-title">상품 12</h3>
                    <p class="product-price">30,000원</p>
                    <button class="add-to-cart">장바구니에 추가</button>
                </div>
                <div class="product">
                    <img src="https://img.dogpre.com/mobile/dogpre/product/93/92557_detail_01825903.png" alt="Product 1">
                    <h3 class="product-title">상품 13</h3>
                    <p class="product-price">30,000원</p>
                    <button class="add-to-cart">장바구니에 추가</button>
                </div>
                <div class="product">
                    <img src="https://img.dogpre.com/mobile/dogpre/product/93/92557_detail_01825903.png" alt="Product 2">
                    <h3 class="product-title">상품 14</h3>
                    <p class="product-price">30,000원</p>
                    <button class="add-to-cart">장바구니에 추가</button>
                </div>
                <div class="product">
                    <img src="https://img.dogpre.com/mobile/dogpre/product/93/92557_detail_01825903.png" alt="Product 1">
                    <h3 class="product-title">상품 15</h3>
                    <p class="product-price">30,000원</p>
                    <button class="add-to-cart">장바구니에 추가</button>
                </div>
                <div class="product">
                    <img src="https://img.dogpre.com/mobile/dogpre/product/93/92557_detail_01825903.png" alt="Product 2">
                    <h3 class="product-title">상품 16</h3>
                    <p class="product-price">30,000원</p>
                    <button class="add-to-cart">장바구니에 추가</button>
                </div>
                <div class="product">
                    <img src="https://img.dogpre.com/mobile/dogpre/product/93/92557_detail_01825903.png" alt="Product 1">
                    <h3 class="product-title">상품 17</h3>
                    <p class="product-price">30,000원</p>
                    <button class="add-to-cart">장바구니에 추가</button>
                </div>
                <div class="product">
                    <img src="https://img.dogpre.com/mobile/dogpre/product/93/92557_detail_01825903.png" alt="Product 2">
                    <h3 class="product-title">상품 18</h3>
                    <p class="product-price">30,000원</p>
                    <button class="add-to-cart">장바구니에 추가</button>
                </div>
                <div class="product">
                    <img src="https://img.dogpre.com/mobile/dogpre/product/93/92557_detail_01825903.png" alt="Product 1">
                    <h3 class="product-title">상품 19</h3>
                    <p class="product-price">30,000원</p>
                    <button class="add-to-cart">장바구니에 추가</button>
                </div>
                <div class="product">
                    <img src="https://img.dogpre.com/mobile/dogpre/product/93/92557_detail_01825903.png" alt="Product 2">
                    <h3 class="product-title">상품 20</h3>
                    <p class="product-price">30,000원</p>
                    <button class="add-to-cart">장바구니에 추가</button>
                </div>
                <div class="product">
                  <img src="https://img.dogpre.com/mobile/dogpre/product/93/92557_detail_01825903.png" alt="Product 2">
                  <h3 class="product-title">상품 20</h3>
                  <p class="product-price">30,000원</p>
                  <button class="add-to-cart">장바구니에 추가</button>
              </div>
              <div class="product">
                <img src="https://img.dogpre.com/mobile/dogpre/product/93/92557_detail_01825903.png" alt="Product 2">
                <h3 class="product-title">상품 20</h3>
                <p class="product-price">30,000원</p>
                <button class="add-to-cart">장바구니에 추가</button>
            </div>
            <div class="product">
              <img src="https://img.dogpre.com/mobile/dogpre/product/93/92557_detail_01825903.png" alt="Product 2">
              <h3 class="product-title">상품 20</h3>
              <p class="product-price">30,000원</p>
              <button class="add-to-cart">장바구니에 추가</button>
          </div>
          <div class="product">
            <img src="https://img.dogpre.com/mobile/dogpre/product/93/92557_detail_01825903.png" alt="Product 2">
            <h3 class="product-title">상품 20</h3>
            <p class="product-price">30,000원</p>
            <button class="add-to-cart">장바구니에 추가</button>
        </div>
            </div>
            <!-- 추가 상품들 -->
            
        
            
        </section>
        <div class="d-flex justify-content-center mt-5">
            <div aria-label="Page navigation example">
                <ul class="pagination">
                  <li class="page-item">
                    <a class="page-link" href="#" aria-label="Previous">
                      <span aria-hidden="true">&laquo;</span>
                    </a>
                  </li>
                  <li class="page-item"><a class="page-link" href="#">1</a></li>
                  <li class="page-item"><a class="page-link" href="#">2</a></li>
                  <li class="page-item"><a class="page-link" href="#">3</a></li>
                  <li class="page-item">
                    <a class="page-link" href="#" aria-label="Next">
                      <span aria-hidden="true">&raquo;</span>
                    </a>
                  </li>
                </ul>
              </div>
            </div>

      
</body>
</html>
