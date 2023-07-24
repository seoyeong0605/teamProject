<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
    <link rel="stylesheet" href="health_analysis.css">
    <style>
        .analysis-container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .analysis-card {
            width: 500px;
            padding: 20px;
            background-color: #f8f9fa;
            border-radius: 10px;
        }
        .input-label {
            display: block;
            margin-bottom: 10px;
        }
        .input-field {
            width: 100%;
            padding: 5px;
            margin-bottom: 10px;
        }
        .submit-button {
            display: block;
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .result-container {
            margin-top: 20px;
            padding: 10px;
            background-color: #f8f9fa;
            border-radius: 5px;
        }
    </style>
    <script>
        function changeWord(element, words) {
            element.innerHTML = element.innerHTML === words[0] ? words[1] : words[0];
        }
    </script>
</head>
<body>

  <div class="analysis-container">
    <div class="analysis-card">
      <h1>애완동물 건강 분석</h1>
      <form id="health-analysis">
        <label for="pet-type" class="input-label">강아지/고양이 선택:</label>
        <select id="pet-type" class="input-field">
          <option value="강아지">강아지</option>
          <option value="고양이">고양이</option>
        </select>
    
        <label for="breed" class="input-label">종을 입력하시오:</label>
        <input type="text" id="breed" class="input-field">
    
        <label for="age" class="input-label">나이를 입력하시오:</label>
        <input type="number" id="age" class="input-field">
    
        <label for="height" class="input-label">키를 입력하시오:</label>
        <input type="number" id="height" class="input-field">
    
        <label for="weight" class="input-label">체중을 입력하시오:</label>
        <input type="number" id="weight" class="input-field">
    
        <label for="diet" class="input-label">평소 식습관을 입력하시오:</label>
        <input type="text" id="diet" class="input-field">
    
        <label for="exercise" class="input-label">평소 운동량을 입력하시오:</label>
        <input type="text" id="exercise" class="input-field">
    
        <button type="button" onclick="analyzeHealth()" class="submit-button">조회하기</button>
      </form>
    
      <div id="result" class="result-container"></div>
    </div>
</div>

<script>
  function analyzeHealth() {
    const petType = document.getElementById('pet-type').value;
    const breed = document.getElementById('breed').value;
    const age = document.getElementById('age').value;
    const height = document.getElementById('height').value;
    const weight = document.getElementById('weight').value;
    const diet = document.getElementById('diet').value;
    const exercise = document.getElementById('exercise').value;

    // 건강 분석 로직을 수행하고 결과를 표시합니다.
    const result = `애완동물 건강 분석 결과:<br>
                    종류: ${petType}<br>
                    종: ${breed}<br>
                    나이: ${age}<br>
                    키: ${height}<br>
                    체중: ${weight}<br>
                    식습관: ${diet}<br>
                    운동량: ${exercise}`;

    document.getElementById('result').innerHTML = result;
  }
</script>
<script>
  function changeWord(element, words) {
    element.textContent = element.textContent === words[0] ? words[1] : words[0];
  }
</script>

</body>
</html>