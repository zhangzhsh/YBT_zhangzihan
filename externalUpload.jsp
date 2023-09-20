<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="Xenon Boostrap Admin Panel" />
<meta name="author" content="" />
<script type="text/javascript" src="<%=request.getContextPath() %>/common/js/jquery-2.2.3.min.js"></script>
    
<script language="javascript" type="text/javascript">
  	var path = "<%=request.getContextPath()%>";
  	
  	<%-- var userName = "<%= request.getAttribute("userName")%>";
  	if(userName == null || userName == "null" || userName ==""){
  	   userName = "SYSTEM";
  	} --%>
  	
  	var upMsg="<%= request.getAttribute("upMsg")%>"; 
   if(upMsg!=null && upMsg!="null"){
      alert(upMsg);
   }
  	
  	var checks = false;
    function check(){
         var fileVal = document.form.file.value; 
         if(fileVal == ""){
             alert("请选择要上传的文件！");
             return checks=false;
         }else{
          return checks=true;
         }
         return checks;
    }
  	
</script> 
<style>
	/* #divMsg{
      position: absolute;
       left:50%;
       top:34%;
       transform: translate(-50%, -50%);
   }
   #divId{
       position: absolute;
       left:50%;
       top:50%;
       transform: translate(-50%, -50%);
   } */
   #divA{
       position: absolute;
       left:50%;
       top:50%;
       transform: translate(-30%, -50%);
   }
</style>
</head>
<body>
   <div id='divA'>
        <form action="${pageContext.request.contextPath}/h5BeanController/uploadFile.do" method="post" class="form-horizontal" enctype="multipart/form-data" name="form" onsubmit="return check()">
                     

        <table style="margin:5px;height:20px;" border=0>
           <tr style="height:20px">
                <td colspan="4" align="left"><font style="font-family:黑体;font-size:30px;color: red">文件上传：</font></td>
         </tr>

            <tr>
            <tr style="height:20px">
                <td>请选择文件：</td>
                <td width="5px;"></td>
                <td><input type="file" class="easyui-filebox" id="file" name="file" style="width:260px;">
                </td>
                <td style="padding-top: 10px;width: 65px" align="right"><button type="submit" class="btn btn-primary" id="search" style="height:3%">上传</button></td></tr>    
               </tr>   
        </table>
       </form>
   </div>
</body>
</html>

