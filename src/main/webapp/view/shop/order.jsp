<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<head>
    
    <link rel="stylesheet" href="order.css">
</head>
<body>
  
    <!-- 결체 창-->
    <main>
      <div class="info">
        <div class="name">
          <span>상품명</span>
        </div>
        <div class="money">
          <span>금액</span>
        </div>
      </div>
        <div id="cart-items">
            <!-- 장바구니 아이템들이 동적으로 추가될 부분 -->
        </div>

        <div id="total-price">
            총 가격: <span id="total">0</span>원
        </div>

        <button id="checkout">결제하기</button>
    </main>
    
    <script src="script.js"></script>
    <script>
        document.getElementById('checkout').addEventListener('click', function() {
            window.open('pay.html', '_blank');
        });
    </script>
</body>
</html>
