<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script>
function selectBox() {
		
	      const xhttp = new XMLHttpRequest();
	      const parms = "?group1=" + document.querySelector("#sel01").value;
	      alert(parms)
	      xhttp.open("GET", "${pageContext.request.contextPath}/animal/myAnimal" + parms, true)
	      xhttp.send();
	      xhttp.onreadystatechange = callBack;
	      }
	   function callBack() {
	      if(this.readyState == 4 && this.status == 200) {
	         let str = this.responseText.split(':')
	         alert(str)
	         document.querySelector("#sel02").innerHTML = str

	        
	      }
	   }
</script>

</head>
<body>

<div class="container mt-3">
  <h2>나의 반려동물</h2>
  <form action="/action_page.php"  name="f">
   
   <div class="row">
   <div class="col">
    <label for="sel01" class="form-label">동물</label>
    <select class="form-select" id="sel01" name="group1"  onchange="selectBox()">
      <option  value="0" >선택하세요</option>
      <option  value="1" >강아지</option>
      <option  value="2">고양이</option>
      <option  value="3" >기타    </option>
    
    </select></div></div>
    <div class="row">
  
    <div class="col">
     <label for="sel02" class="form-label">종</label>
    <select class="form-select" id="sel02" name="group2">
      <option>1</option>
      <option>2</option>
      <option>3</option>
      <option>4</option>
    </select>
    </div>
     <div class="col">
     <label for="sel03" class="form-label">교배여부</label>
    <select class="form-select" id="sel03" name="sellist1">
      <option>1</option>
      <option>2</option>
      <option>3</option>
      <option>4</option>
    </select>
    </div>
   </div>
    <div class="row">
    <div class="col">
     <label for="sel04" class="form-label">이름</label>
    <input type="text" class="form-control"  id="sel04">
    </div></div>
    
     <div class="row">
  
    <div class="col">
     <label for="sel05" class="form-label">나이(개월)</label>
    <select class="form-select" id="sel05" name="sellist1">
      <option>1</option>
      <option>2</option>
      <option>3</option>
      <option>4</option>
    </select>
    </div>
     <div class="col">
     <label for="sel06" class="form-label">성별</label>
    <select class="form-select" id="sel06" name="sellist1">
      <option>1</option>
      <option>2</option>
      <option>3</option>
      <option>4</option>
    </select>
    </div>
   </div>
   
   <div class="row">
   <div class="col">
    <label for="sel07" class="form-label">사진</label>
   <input type="file"  class="form-control" name="picture"  id="sel07">
   
   </div></div>
    
   
   
   
   
    <button type="submit" class="btn btn-primary mt-3">Submit</button>
  </form>
</div>

</body>
</html>
