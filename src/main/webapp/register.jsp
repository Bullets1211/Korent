<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta http-equiv="Content-Language" content="zh-cn" />
	<link rel="stylesheet" href="/resource/css/regist.css" type="text/css" />
</head>

<body>
<div id="header">
<h1>ע��ͨ��֤</h1>
</div>
<div id="line"></div>

<div id="content">
<br/>
<form action="/korent/register.action"  method="post"><br/><br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�û���: 
<input type="text" name="username" /><br/><br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�ֻ���: 
<input type="tel" name="phone"  id="phone" onKeyUp="checkphone()"/><br/><br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;����: 
<input type="password" name="password" /><br/><br/>
<span class="prompt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp6-18λ�����ִ�Сд,��ĸ�����֡���������е����ֻ���������</span></p>
�ٴ���������: 
<input type="password" name="passwordAgain" /><br/><br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;QQ��: 
<input type="text" name="qq"  id="qq"  onKeyUp="checkqq()"/><br/><br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email: 
<input type="email" name="email" id="Email" onKeyUp="checkEmail()" /><br/><br/>
<input type="checkbox" name="protocol" />
�����Ķ������ܡ��û�����Э�顷<br />
<br/>
<input type="submit" value="ȷ��" onClick="" style="width:100px; height:30px; " class="queren"/>
</form>
</div>
<div id="menu">
<dr/><dr/>
<h4>ע���Ϊ�������������û��������ԣ�</h4>
<ul>
  <li><span class="red">���</span>��վ��ʾ����Ʒ��Ϣ</li>
  <br/>
  <li><span class="red">����</span>���İ���Ʒ�ľ�����Ϣ���Է��������û�Ԥ��</li>
  <br/>
  <li>�ɹ�Ԥ������������ϵ��������������</li>
  <br/>
  <li><span class="red">��ѯ</span>����Ҫ���޵���Ʒ</li>
  <br/>
  <li><span class="red">����</span>���ĸ�����Ϣ</li>
  <br/>
  <li><span class="red">�ղ�</span>�����ǵ���Ʒ</li>
</ul>
</div>
<body onload="show()">
    <center>
<div id="footer" style="color:#000000">������  Korent</div>
 </center>
</body>



</body>
<script type="text/javascript">
	function show() {
		footer.style.visibility = (footer.style.visibility == "hidden") ? "visible" : "hidden";
		setTimeout("show()", 400);
	}
	function checkEmail(){
		var ENumber = document.getElementById('Email').value;
		var show = document.getElementById('Email');
		var pattern =  /^\w+[@]\w+[.]\w+$/g;
		if(pattern.test(ENumber)){
			show.style.borderColor = 'green';
			show.style.borderStyle = 'solid';
			show.style.borderWidth = 1;
		}
		else{
			show.style.borderColor = 'red';
			show.style.borderStyle = 'solid';
			show.style.borderWidth = 1;
		}
	}

	function checkqq(){
		var ENumber = document.getElementById('qq').value;
		var show = document.getElementById('qq');
		var pattern =  /^[0-9]+$/g;
		if(pattern.test(ENumber)){
			show.style.borderColor = 'green';
			show.style.borderStyle = 'solid';
			show.style.borderWidth = 1;
		}
		else{
			show.style.borderColor = 'red';
			show.style.borderStyle = 'solid';
			show.style.borderWidth = 1;
		}
	}

	function checkphone(){
		var ENumber = document.getElementById('phone').value;
		var show = document.getElementById('phone');
		var pattern =  /^1[0-9]{10}$/g;
		if(pattern.test(ENumber)){
			show.style.borderColor = 'green';
			show.style.borderStyle = 'solid';
			show.style.borderWidth = 1;
		}
		else{
			show.style.borderColor = 'red';
			show.style.borderStyle = 'solid';
			show.style.borderWidth = 1;
		}
	}
</script>
</html>
