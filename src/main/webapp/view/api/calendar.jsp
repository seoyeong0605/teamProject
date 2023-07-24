<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<head>
    <style>
        .calendar-container {
            position: relative;
            display: inline-block;
        }

        .calendar {
            border: 1px solid #ccc;
            padding: 10px;
            font-family: Arial, sans-serif;
        }

        .close-button {
            position: absolute;
            top: 0;
            right: 0;
            background-color: transparent;
            color: #000;
            width: 20px;
            height: 20px;
            border-radius: 50%;
            text-align: center;
            line-height: 20px;
            cursor: pointer;
            font-size: 14px;
            font-weight: bold;
        }
    .calendar .month {
        font-weight: bold;
        margin-bottom: 10px;
        display: flex;
        align-items: center;
    }

    .calendar .month button {
        border: none;
        background-color: transparent;
        cursor: pointer;
        margin: 0 5px;
    }

    .calendar .weekdays {
        display: flex;
        justify-content: space-between;
        margin-bottom: 10px;
    }

    .calendar .weekdays .weekday {
        flex: 1;
        text-align: center;
    }

    .calendar .days {
        display: grid;
        grid-template-columns: repeat(7, 1fr);
        gap: 5px;
    }

    .calendar .day {
        text-align: center;
    }

    .calendar .day button {
        width: 30px;
        height: 30px;
        border: none;
        background-color: #eee;
        cursor: pointer;
    }

    .calendar .day.selected button {
        background-color: #ffcc00;
    }
</style>
</head>
<body>
    <div class="calendar-container">
        <span class="close-button" id="closeButton">X</span>
        <div class="calendar" id="calendar"></div>
    </div>

    <script>
        // 현재 날짜 가져오기
        const today = new Date();
    
        // 전체 기간 선택을 위한 변수들
        let startDate = null;
        let endDate = null;
    
        // 달력 생성 함수
        function createCalendar(year, month) {
            const calendar = document.getElementById("calendar");
    
            // 달력 초기화
            calendar.innerHTML = "";
    
            // 월, 연도 표시
            const monthElement = document.createElement("div");
            monthElement.classList.add("month");
    
            const prevButton = document.createElement("button");
            prevButton.innerHTML = "&lt;";
            prevButton.addEventListener("click", () => {
                const prevMonth = new Date(year, month - 1);
                createCalendar(prevMonth.getFullYear(), prevMonth.getMonth());
            });
            monthElement.appendChild(prevButton);
    
            const monthText = document.createElement("span");
            monthText.textContent = `${year}년 ${month + 1}월`;
            monthElement.appendChild(monthText);
    
            const nextButton = document.createElement("button");
            nextButton.innerHTML = "&gt;";
            nextButton.addEventListener("click", () => {
                const nextMonth = new Date(year, month + 1);
                createCalendar(nextMonth.getFullYear(), nextMonth.getMonth());
            });
            monthElement.appendChild(nextButton);
    
            calendar.appendChild(monthElement);
    
            // 요일 표시
            const weekdaysElement = document.createElement("div");
            weekdaysElement.classList.add("weekdays");
            const weekdays = ["일", "월", "화", "수", "목", "금", "토"];
            weekdays.forEach(weekday => {
                const weekdayElement = document.createElement("div");
                weekdayElement.classList.add("weekday");
                weekdayElement.textContent = weekday;
                weekdaysElement.appendChild(weekdayElement);
            });
            calendar.appendChild(weekdaysElement);
    
            // 날짜 표시
            const daysElement = document.createElement("div");
            daysElement.classList.add("days");
            calendar.appendChild(daysElement);
    
            // 현재 월의 첫 번째 날과 마지막 날 구하기
            const firstDay = new Date(year, month, 1);
            const lastDay = new Date(year, month + 1, 0);
    
            // 이번 달의 첫 번째 날의 요일
            const firstDayOfWeek = firstDay.getDay();
    
            // 이번 달의 마지막 날짜
            const totalDays = lastDay.getDate();
    
            // 지난 달의 마지막 날짜
            const lastDayOfPrevMonth = new Date(year, month, 0).getDate();
    
            // 지난 달 날짜 표시
            for (let i = firstDayOfWeek - 1; i >= 0; i--) {
                const prevDayElement = document.createElement("div");
                prevDayElement.classList.add("day");
    
                const prevButton = document.createElement("button");
                prevButton.textContent = lastDayOfPrevMonth - i;
                prevButton.disabled = true;
    
                prevDayElement.appendChild(prevButton);
                daysElement.appendChild(prevDayElement);
            }
    
            // 이번 달 날짜 표시
            for (let i = 1; i <= totalDays; i++) {
                const dayElement = document.createElement("div");
                dayElement.classList.add("day");
    
                const button = document.createElement("button");
                button.textContent = i;
                button.addEventListener("click", () => selectDate(new Date(year, month, i)));
    
                dayElement.appendChild(button);
                daysElement.appendChild(dayElement);
            }
    
            // 다음 달 날짜 표시
            const remainingDays = 7 - (firstDayOfWeek + totalDays) % 7;
            for (let i = 1; i <= remainingDays; i++) {
                const nextDayElement = document.createElement("div");
                nextDayElement.classList.add("day");
    
                const nextButton = document.createElement("button");
                nextButton.textContent = i;
                nextButton.disabled = true;
    
                nextDayElement.appendChild(nextButton);
                daysElement.appendChild(nextDayElement);
            }
        }
    
        // 날짜 선택 함수
        function selectDate(date) {
            const dayButtons = document.querySelectorAll(".day button");
    
            // 이전에 선택한 날짜 버튼 클래스 제거
            dayButtons.forEach(button => button.parentElement.classList.remove("selected"));
    
            // 선택한 날짜 버튼에 클래스 추가
            const button = document.querySelector(`.day button:nth-child(${date.getDate()})`);
            button.parentElement.classList.add("selected");
    
            // 선택한 날짜를 시작일 또는 종료일로 설정
            if (startDate === null) {
                startDate = date;
            } else if (endDate === null) {
                endDate = date;
                // 선택 완료 후에는 선택된 기간을 표시
                showSelectedDates();
            } else {
                // 시작일과 종료일이 이미 선택된 경우, 기존 선택 초기화 후 선택한 날짜를 시작일로 설정
                startDate = date;
                endDate = null;
                dayButtons.forEach(button => button.parentElement.classList.remove("selected"));
                button.parentElement.classList.add("selected");
            }
        }
    
        // 선택된 기간 표시 함수
        function showSelectedDates() {
            if (startDate && endDate) {
                alert(`Selected Dates: ${startDate.toLocaleDateString()} ~ ${endDate.toLocaleDateString()}`);
            }
        }
    
        // 달력 닫기 버튼 클릭 이벤트 처리
        const closeButton = document.getElementById("closeButton");
        closeButton.addEventListener("click", () => {
            // 페이지 이전으로 이동
            window.history.back();
        });
    
        // 현재 날짜로 달력 생성
        const currentYear = today.getFullYear();
        const currentMonth = today.getMonth();
        createCalendar(currentYear, currentMonth);
    </script>
</body>
</html>
