<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<head>
<title>西安工业大学</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style>
body{margin: 0;height: 869px;}
ul{margin: 0;padding: 0;list-style: none;}
a{text-decoration: none;color: black;}
h1,h2,h3,h4{margin: 0;font-weight: normal;}
input{margin: 0;padding: 0;border: none;outline: none;}
	
.box1{ width: 1535px; height: 86px; background-color:#3d86b5; margin: 0 auto;}	
.box1 img{ margin-top: 25px; margin-left: 30px;}

.box2{ width: 1535px; margin: 0 auto; background-color:#1670a9;}
.grzl{ width: 193px; height: 196px; background-color:#051a28;}
.grzl a{ font-size: 20px; color: aliceblue; margin-top: 78px;}
	
.bd1{width: 183px; height: 80px; background-color:#092d43; border-left: 10px solid #04e4e4;}
.mn1{ font-size:26px; color: aliceblue; padding-left: 39px; display:block; padding-top: 24px; }
.bd1:hover{ background-color:#04e4e4;}
	
.bd2{width: 183px; height: 80px; background-color:#092d43; border-left: 10px solid #ff0000;}
.mn2{ font-size:26px; color: aliceblue; padding-left: 39px; display:block; padding-top: 24px; }
.bd2:hover{ background-color:#ff0000;}	
	
.bd3{width: 183px; height: 80px; background-color:#092d43; border-left: 10px solid #d87426;}
.mn3{ font-size:26px; color: aliceblue; padding-left: 39px; display:block; padding-top: 24px; }
.bd3:hover{ background-color:#d87426;}
	
.bd4{width: 183px; height: 80px; background-color:#092d43; border-left: 10px solid #d969e3;}
.mn4{ font-size:26px; color: aliceblue; padding-left: 39px; display:block; padding-top: 24px; }
.bd4:hover{ background-color:#d969e3;}
	
.bd5{width: 183px; height: 80px; background-color:#092d43; border-left: 10px solid #0dd767;}
.mn5{ font-size:26px; color: aliceblue; padding-left: 39px; display:block; padding-top: 24px; }
.bd5:hover{ background-color:#0dd767;}
	
.bd6{width: 183px; height: 80px; background-color:#092d43; border-left: 10px solid #e7e17f;}
.mn6{ font-size:26px; color: aliceblue; padding-left: 39px; display:block; padding-top: 24px; }
.bd6:hover{ background-color:#e7e17f;}
	
.bd7{width: 183px; height: 80px; background-color:#092d43; border-left: 10px solid #f09300;}
.mn7{ font-size:26px; color: aliceblue; padding-left: 39px; display:block; padding-top: 24px; }
.bd7:hover{ background-color:#f09300;}
	
.bd8{width: 183px; height: 80px; background-color:#092d43; border-left: 10px solid #00f0d1;}
.mn8{ font-size:26px; color: aliceblue; padding-left: 39px; display:block; padding-top: 24px; }
.bd8:hover{ background-color:#00f0d1;}
	
.bd9{width: 183px; height: 80px; background-color:#092d43; border-left: 10px solid #c0f000;}
.mn9{ font-size:26px; color: aliceblue; padding-left: 39px; display:block; padding-top: 24px; }
.bd9:hover{ background-color:#c0f000;}
	
.bd10{width: 183px; height: 80px; background-color:#092d43; border-left: 10px solid #00b5f0;}
.mn10{ font-size:26px; color: aliceblue; padding-left: 39px; display:block; padding-top: 24px; }
.bd10:hover{ background-color:#00b5f0;}
	
.gx{ float:right; margin-top: 78px; margin-left: 0px;margin-right: 400px;}
.gx a{ font-size: 40px; color: aliceblue; margin-top: 78px;}

</style>
</head>
<body>
<!-- 选择器：id class 标签 派生  -->
   <div class ="box1" >
       
   </div>
   <div class ="box2">
   
     <div class="gx">
        <a>元创OA系统</a>
     </div>
     
     <div class ="bd1">
     <a href="selectAllStaffByPage?currentPage=1" class="mn1" id= 1>
                员工信息
        </a>
     </div>
     
     <div class ="bd2">
     <a href="selectAllClassByPage?currentPage=1" class="mn2" id = 2>
                    部门信息
        </a>
     </div>
     
     <div class ="bd3">
        <a href="PMain" class="mn3">
                    公司群聊
        </a>
     </div>
     
     <div class ="bd4">
     <a href="rMain" class="mn4" id = 4>
                权限管理
        </a>
     </div>
     
     <div class ="bd5">
        <a href="#" class="mn5" id = 5>
                视频会议
        </a>
     </div>
     
     <div class ="bd6">
     <a href="#" class="mn6" id = 6>
                考勤打卡
        </a>
     </div>
     
     <div class ="bd7">
     <a href="#" class="mn7"  id = 7>
                员工日志
        </a>
     </div>
     
     <div class ="bd8">
     <a href="#" class="mn8" id = 8>
                日程安排
        </a>
     </div>
     
     <div class ="bd9">
     <a href="#" class="mn9" id = 9>
                关于我们
        </a>
        </div>

   </div>

</body>
</html>



