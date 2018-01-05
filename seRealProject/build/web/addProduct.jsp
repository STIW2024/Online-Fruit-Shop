
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Product</title>
    </head>
    <body>
        <form method="post" action="uploadimg" enctype="multipart/form-data">
            <table width ="600px" align="center" border="1">
                <tr>
                    <td align="center" colspan="2">Add Product</td>
                </tr>
                <tr>
                    <td>Product Id :</td>
                    <td><input type="number" name="id" id="id"/></td>
                </tr>
                <tr>
                    <td>Product Name :</td>
                    <td><input type="text" name="iname" id="iname"/></td>
                </tr>
                <tr>
                    <td>Product Description :</td>
                    <td><input type="text" name="idesc" id="idesc"/></td>
                </tr>
                <tr>
                    <td>Product Price :</td>
                    <td><input type="number" name="iprice" id="iprice"/></td>
                </tr>
                <tr>
                    <td>Product From :</td>
                    <td><input type="text" name="ilocation" id="ilocation"/></td>
                </tr>
                <tr>
                    <td>Image Link :</td>
                    <td><input type="file" name="img" id="img"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Save"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
