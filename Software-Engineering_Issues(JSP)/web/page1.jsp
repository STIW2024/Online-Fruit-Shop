<%-- 
    Document   : page1
    Created on : 2017-11-22, 1:01:30
    Author     : Aman
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Record</title>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
        <link href="./css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="./js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
    </head>
    <body class="container">
        <div class="form-group col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3" style="top: 80px">
            <form role="form">
		<h2>Please Input</h2>
                <hr>
                <div class="row">
                    <div class="form-group col-md-14">
                        <input type="text" name="matric_number" id="matric_number" class="form-control input-lg" placeholder="Matric Number">
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-14">
                        <input type="text" name="name" id="name" class="form-control input-lg" placeholder="Name">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="input-group date form_date col-md-12" data-date-format="yyyy.mm.dd">
                        <input class="form-control input-lg" type="text" placeholder="Date of Birth"  name="date_of_birth" id="date_of_birth">
                        <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 form-group">
                        <input id="add" type="submit" class="btn btn-success btn-block btn-lg" value="ADD"  data-toggle="modal" data-target="#myModal">
                    </div>
                    <div class="col-md-6 form-group">
                        <a class="btn btn-primary btn-block btn-lg" href="page2.jsp">View</a>
                    </div>
                </div>
            </form>    
        </div>
        
        <div class="modal fade" role="dialog" id="succeed" style="top:30%">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Successful!</h4>
                    </div>
                    <div class="modal-body">
                        <p>Already added.</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">OK</button>
                    </div>
                </div>
            </div>
        </div>
        <%
            String mn = request.getParameter("matric_number");
            String na = request.getParameter("name");
            String db = request.getParameter("date_of_birth");
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://node16191-neil-wang.kilatiron.com/SoftwareEngineering", "Aman", "748748aa");
                Statement sta = con.createStatement();
                sta.executeUpdate("insert into Issue3student(matric_number,name,date_of_birth)values('"+mn+"','"+na+"','"+db+"')");
        %>
        <script type="text/javascript">  
            $("#succeed").modal("show");
        </script>
        <%
            }catch(Exception e){}
        %>
        
        <script type="text/javascript">
            $('.form_date').datetimepicker({
                language: 'en',
                autoclose:1,
                todayHighlight:1,
                startView:4,
                minView: 2
            });
        </script>
    </body>    
</html>
