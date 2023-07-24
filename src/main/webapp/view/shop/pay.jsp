<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <body>  
      
    <main>
        <form id="payment-form">
            <label for="card-number">카드 번호:</label>
            <input type="text" id="card-number" required>
            
            <label for="expiry-date">유효 기간:</label>
            <input type="text" id="expiry-date" required>
            
            <label for="cvv">CVV:</label>
            <input type="text" id="cvv" required>

            <button type="submit">결제 완료</button>
        </form>
    </main>
   

    <script src="pay.js"></script>
</body>
</html>