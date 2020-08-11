<%@ page contentType="text/html;charset=gb2312"%>
<html>
   <head>
     <title>getAddClass2</title>
   </head>
   <body>
     <h1>getAddClass2</h1>
     <jsp:useBean id="add" scope="page" class="com.group.bean.Add" />
     <form method="post" action="getAddClass.jsp">
        <jsp:setProperty name="add" property="numA"/>
        <jsp:setProperty name="add" property="numB"/>
        <p>numA:<input type="text" name="numA"/>
           numB:<input type="text" name="numB"/></p>
        <p><jsp:getProperty name="add" property="numA"/>
           + <jsp:getProperty name="add" property="numB"/>
           = <jsp:getProperty name="add" property="sum"/></p>
        <input type="submit" name="submit" value="Ìá½»"/>
    </form>
  </body>
</html>