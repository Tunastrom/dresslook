<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="${pageContext.request.contextPath}/HTML/assets/js/jquery-3.3.1.min.js"></script>
    <title>jqueryEvent4.html</title>
    <style>
        #tb1 {
           border-collapse: collapse;
           background-color: #d0d0d0;
        }
    </style>
</head>

<body>
    <button>CreateTable</button>
    <div id="here"></div>
    <script>
        $(function () {
            $("button").on("click", function () {
                var table = $("<table>");
                table.attr({ "border": "1", "id": "tb1"});
                table.append($("<caption>").text("주소록"));
                var tr1 = $("<tr>").append($("<th>").text("이름"),
                                           $("<th>").text("나이"),
                                           $("<th>").text("전화번호"),
                                           $("<th>").text("Delete"))
                                   .attr("align", "center");
                var tr2 = $("<tr>").append($("<td>").text("홍길동"),
                                           $("<td>").text("35"),
                                           $("<td>").text("010-1111-1111"),
                                           $("<td>").attr("id", "del"))
                                   .attr("align", "center");
                    tr2.children("#del").append($("<button>").text("Delete"));
                var tr3 = $("<tr>").append($("<td>").text("김길동"),
                                           $("<td>").text("40"),
                                           $("<td>").text("010-2222-2222"),
                                           $("<td>").attr("id", "del"))
                                   .attr("align", "center");
                    tr3.children("#del").append($("<button>").text("Delete"));
                table.append(tr1, tr2, tr3);                     
                $("#here").append(table);
                $("#del>button").on("click", function () {
                	$(this).text();
                    $(this).parent().parent().remove();
                });
            });
        });    
    </script>
</body>

</html>