<%--
  Created by IntelliJ IDEA.
  User: 86138
  Date: 2021/8/3
  Time: 15:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script type="text/javascript" src="/js/jquery.min.js"></script>
    <link href="/css/bootstrap3.min.css" rel="stylesheet">
    <link href="/css/main-style.css" rel="stylesheet">
    <script type="text/javascript" src="/js/bootstrap3.min.js"></script>
    <script src="/js/commons.js"></script>
    <title>网上书店</title>
</head>
<body>
<div class="header">
    <div class="container">
        <div class="row">
            <div class="login col-md-12">
                <h1><a href="">欢迎来到<strong>我的</strong>书店</a>
                    <span style="color: red">.</span>
                </h1>
            </div>
        </div>
        <div class="row">
            <div class="login col-md-3 col-md-offset-9">
                <a class="login" href="" rel="tooltip"  data-toggle="modal" data-target="#myModal">登录</a>
                <a class="register" href="" rel="tooltip" data_placement="bottom">注册</a>
            </div>
        </div>
    </div>
</div>

<div class="aside">
    <div class="container">
        <div class="row"> <%--下方左右div控制--%>
            <div class="col-md-3"> <%--左侧菜单div控制--%>
                <ul class="nav nav-pills nav-stacked" id="categorylist">
                    <li class="nav-header">书籍类型</li>
                    <c:forEach items="${category}" var="category">
                        <li>
                            <a href="javascript:showBook(${category.id})">${category.name}</a>
                        </li>
                    </c:forEach>
                </ul>
            </div><%--左侧菜单div控制--%>
        </div>
    </div>
</div>


<div id="book">
    <%--<div class="col-md-9">&lt;%&ndash;右侧书本div控制&ndash;%&gt;--%>
    <%--<%--%>
    <%--Object books = request.getAttribute("books");--%>
    <%--List<Book> listBook = null;--%>
    <%--if (books instanceof List) {--%>
    <%--listBook =(List<Book>)books;--%>
    <%--}--%>
    <%--if(listBook!=null) {--%>
    <%--for(Book book:listBook) {--%>
    <%--String desc = book.getDescription();--%>
    <%--if(desc.length() > 18) {--%>
    <%--desc = desc.substring(1,18) + "...";--%>
    <%--}--%>
    <%--%>--%>
    <%--<div class="col-sm-9 col-md-3">--%>
    <%--<div class="thumbnail">--%>
    <%--<img src="/images/book.jpeg"--%>
    <%--alt="通用的占位符缩略图">--%>
    <%--<div class="caption">--%>
    <%--<h4><%=book.getName()%></h4>--%>
    <%--<p><%=desc%></p>--%>
    <%--<p>--%>
    <%--<a href="#" class="btn btn-primary" role="button">--%>
    <%--按钮--%>
    <%--</a>--%>
    <%--<a href="#" class="btn btn-default" role="button">--%>
    <%--按钮--%>
    <%--</a>--%>
    <%--</p>--%>
    <%--</div>--%>
    <%--</div>--%>
    <%--</div>--%>
    <%--<%--%>
    <%--}--%>
    <%--}--%>
    <%--%>--%>
    <%--</div>&lt;%&ndash;右侧书本div控制&ndash;%&gt;--%>
</div>




<div class="modal fade" id="myModal" >
    <div class="modal-dialog" style="width:550px;" >
        <div class="modal-content">
            <!--  模态框的头 -->
            <div class="modal-header">
                <h2 class="modal-title" id="myModalLabel" style="margin: 0 auto;font-weight: 300;font-family: '宋体'">登录</h2>
            </div>
            <div class="modal-body">

                <!--   以下是登录的form表单 -->
                <form class="form-group" action="showID.jsp" method="post">
                    <div class="form-group">
                        <label>用户名</label>
                        <input name="id" class="form-control" type="text" placeholder="请输入用户名">
                    </div>
                    <div class="form-group">
                        <label>密码</label>
                        <input name="pwd" class="form-control" type="password" placeholder="请输入密码">
                    </div>

                    <div class="text-right">
                        <button class="btn btn-primary" type="submit">登录</button>
                        <button class="btn btn-danger" data-dismiss="modal">取消</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>


</body>
<script language="JavaScript">
    // function showCategory() {
    //     var xmlHttp = new XMLHttpRequest();
    //     xmlHttp.open("GET","/category",true);
    //     xmlHttp.onreadystatechange = function () {
    //         if(xmlHttp.readyState==4) {
    //             var data = xmlHttp.responseText;
    //             var obj = JSON.parse(data);
    //             obj = obj.categories;
    //             var listHtml = "<li class=\"nav-header\">书籍类别</li>\n" ;
    //             for(var i=0;i<obj.length;i++){
    //                 listHtml += "<li>\n" +
    //                     " <a href=\"javascript:showBook("+ obj[i].id + ")\">"+obj[i].name+"</a>\n" +
    //                     "           </li>"
    //             }
    //             document.getElementById("categorylist").innerHTML=listHtml;
    //         }
    //     }
    //     xmlHttp.send();
    // }

    function showBook(categoryID) {
        var xmlHttp = new XMLHttpRequest();
        xmlHttp.open("GET", "/book/"+categoryID, true);
        xmlHttp.onreadystatechange = function () {
            if (xmlHttp.readyState == 4) {
                var data = xmlHttp.responseText;
                var obj = JSON.parse(data);
                var listbook = '';
                for(var i = 0; i<obj.length;i++){
                    var bookname = obj[i].name;
                    var desc = obj[i].description;
                    if(desc.length > 20) {
                        desc = desc.substring(0,17)
                    }
                    listbook += `<div class="col-sm-9 col-md-3"><div class="thumbnail" ><img src="/images/book.jpeg"><div class="caption"><h4>
                                ${bookname}</h4><p>${desc}</p><p><a href="#" class="btn btn-primary"role="button">加入购物车</a>
                                <a href="#" class="btn btn-default" role="button">查看详情</a></p></div></div> </div>`;
                }
                document.getElementById("book").innerHTML = listbook;
            }
        }
        xmlHttp.send();
    }
</script>
</html>
