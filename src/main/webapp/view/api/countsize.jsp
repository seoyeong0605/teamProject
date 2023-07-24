<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<head>
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

        .count-buttons {
            margin-bottom: 20px;
        }

        .count-buttons button {
            padding: 8px 12px;
            font-size: 16px;
            border: none;
            border-radius: 4px;
            background-color: #e0e0e0;
            cursor: pointer;
        }

        .count-buttons span {
            margin: 0 10px;
            font-size: 18px;
            font-weight: bold;
        }

        .size-radio {
            margin-top: 10px;
        }

        .size-radio label {
            margin-right: 15px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>강아지 수:</h2>
        <div class="count-buttons">
            <button id="decrementButton">-</button>
            <span id="dogCount">0</span>
            <button id="incrementButton">+</button>
        </div>
        <h2>강아지 사이즈:</h2>
        <div class="size-radio">
            <label>
                <input type="radio" name="dogSize" value="소"> 소
            </label>
            <label>
                <input type="radio" name="dogSize" value="중"> 중
            </label>
            <label>
                <input type="radio" name="dogSize" value="대"> 대
            </label>
        </div>
    </div>

    <script>
        const dogCountElement = document.getElementById('dogCount');
        const decrementButton = document.getElementById('decrementButton');
        const incrementButton = document.getElementById('incrementButton');

        let dogCount = 0;

        decrementButton.addEventListener('click', function() {
            if (dogCount > 0) {
                dogCount--;
                updateDogCount();
            }
        });

        incrementButton.addEventListener('click', function() {
            dogCount++;
            updateDogCount();
        });

        function updateDogCount() {
            dogCountElement.textContent = dogCount;
        }
    </script>
</body>
</html>
