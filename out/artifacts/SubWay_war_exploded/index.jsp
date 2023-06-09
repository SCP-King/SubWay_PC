<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>北京地铁系统</title>
    <style>
      body{
        text-align: center;
      }
      span{
        margin: 5px;
        border: 2px solid blanchedalmond;
        font-size: 15pt;
        background: blanchedalmond;
      }
      form{
        text-align: center;
        border: deepskyblue solid 2px;
        width: 400px;
        height: 400px;
        margin-left: 200px;
        margin-top: 50px;
      }
      input{
        font-size: 15pt;
      }
    </style>
    <script>
      function a1(){
        document.getElementById('f1').style.display='block'
        document.getElementById('f2').style.display='none'
        document.getElementById('f3').style.display='none'
        document.getElementById('f4').style.display='none'
        document.getElementById('t1').style.background='paleturquoise'
        document.getElementById('t2').style.background='blanchedalmond'
        document.getElementById('t3').style.background='blanchedalmond'
        document.getElementById('t4').style.background='blanchedalmond'
      }
      function a2(){
        document.getElementById('f1').style.display='none'
        document.getElementById('f2').style.display='block'
        document.getElementById('f3').style.display='none'
        document.getElementById('f4').style.display='none'
        document.getElementById('t1').style.background='blanchedalmond'
        document.getElementById('t2').style.background='paleturquoise'
        document.getElementById('t3').style.background='blanchedalmond'
        document.getElementById('t4').style.background='blanchedalmond'
      }
      function a3(){
        document.getElementById('f1').style.display='none'
        document.getElementById('f2').style.display='none'
        document.getElementById('f3').style.display='block'
        document.getElementById('f4').style.display='none'
        document.getElementById('t1').style.background='blanchedalmond'
        document.getElementById('t2').style.background='blanchedalmond'
        document.getElementById('t3').style.background='paleturquoise'
        document.getElementById('t4').style.background='blanchedalmond'
      }
      function a4(){
        document.getElementById('f1').style.display='none'
        document.getElementById('f2').style.display='none'
        document.getElementById('f3').style.display='none'
        document.getElementById('f4').style.display='block'
        document.getElementById('t1').style.background='blanchedalmond'
        document.getElementById('t2').style.background='blanchedalmond'
        document.getElementById('t3').style.background='blanchedalmond'
        document.getElementById('t4').style.background='paleturquoise'
      }
    </script>
  </head>
  <body>
  <span onclick="a1()" id="t1">线路站点查询</span>
  <span onclick="a2()" id="t2">线路名称查询</span>
  <span onclick="a3()" id="t3">最短路径查询查询</span>
  <span onclick="a4()" id="t4">最少换乘查询</span>
  <form id="f1" style="display: block" action="/selectstations" method="post">
    <h1>线路站点选择</h1>
  <select name="kind" style="font-size: 20pt">
    <option value="line1">地铁1号线</option>
    <option value="line2">地铁八通线</option>
    <option value="line3">地铁2号线</option>
    <option value="line4">地铁4号线</option>
    <option value="line5">地铁大兴线</option>
    <option value="line6">地铁5号线</option>
    <option value="line7">地铁6号线</option>
    <option value="line8">地铁7号线</option>
    <option value="line9">地铁8号线</option>
    <option value="line10">地铁9号线</option>
    <option value="line11">地铁10号线</option>
    <option value="line12">地铁13号线</option>
    <option value="line13">地铁14号线</option>
    <option value="line14">地铁15号线</option>
    <option value="line15">地铁房山线</option>
    <option value="line16">地铁昌平线</option>
    <option value="line17">地铁亦庄线</option>
    <option value="line18">机场线</option>
  </select>
    <input type="submit" value="查询" style="margin: 30px;font-size: 15pt">
  </form>
  <form id="f2" style="display: none" action="/selectlines" method="post">
    <h1>站点名</h1>
    <input type="text" name="stationname" placeholder="请输入站点名" required="required">
    <br/>
    <input type="submit" value="查询" style="margin: 30px;font-size: 15pt">
  </form>
  <form id="f3" style="display: none" method="post" action="/selectshort">
    <h1>起点</h1>
    <input type="text" name="start"placeholder="输入起始点"  required="required">
    <h1>终点</h1>
    <input type="text" name="end" placeholder="请输入终点" required="required">
    <br/>
    <input type="submit" value="查询" style="margin: 30px;font-size: 15pt">
  </form>
  <form id="f4" style="display: none" method="post" action="/selectless">
    <h1>起点</h1>
    <input type="text" name="start" placeholder="输入起始点" required="required">
    <h1>终点</h1>
    <input type="text" name="end" placeholder="请输入终点" required="required">
    <br/>
    <input type="submit" value="查询" style="margin: 30px;font-size: 15pt">
  </form>
  </body>
</html>
