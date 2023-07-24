<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<head>
    <meta charset="UTF-8">
    <title>강아지 종류 검색</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            padding: 20px;
        }

        .container {
            background-color: #fff;
            border-radius: 4px;
            padding: 20px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            margin: 0 auto;
        }

        h2 {
            margin-bottom: 10px;
        }

        .search-form {
            margin-bottom: 20px;
        }

        .search-form input {
            width: 100%;
            padding: 8px;
            font-size: 16px;
            border: none;
            border-radius: 4px;
        }

        .search-results {
            font-size: 18px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>강아지 종류 선택하기</h2>
        <div class="search-form">
            <input type="text" id="breedInput" placeholder="강아지 종류를 입력하세요">
            <button id="searchButton">검색</button>
        </div>
        <div class="search-results" id="searchResults"></div>
    </div>

    <script>
        const breedInput = document.getElementById('breedInput');
        const searchButton = document.getElementById('searchButton');
        const searchResults = document.getElementById('searchResults');

        searchButton.addEventListener('click', function() {
            const userInput = breedInput.value.trim();

            if (userInput === '') {
                searchResults.textContent = '강아지 종류를 입력하세요.';
                return;
            }

            const dogBreeds = ["비숑 프리제", "골든 리트리버", "시베리안 허스키", "요크셔 테리어", "치와와", "불독", "푸들", "달마시안", "말티즈"];
            const matchedBreeds = dogBreeds.filter(breed => breed.toLowerCase().includes(userInput.toLowerCase()));

            if (matchedBreeds.length > 0) {
                const resultsText = `근접한 강아지 종류: ${matchedBreeds.join(", ")}`;
                searchResults.textContent = resultsText;
            } else {
                searchResults.textContent = '해당하는 강아지 종류를 찾을 수 없습니다.';
            }
        });
    </script>
</body>
</html>
