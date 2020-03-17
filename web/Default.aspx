<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        
#overlay {
position: fixed;
top: 0;
left: 0;
width: 100%;
height: 100%;
background-color: #000;
filter:alpha(opacity=70);
-moz-opacity:0.7;
-khtml-opacity: 0.7;
opacity: 0.7;
z-index: 100;
display: none;
}
.cnt223 a{
text-decoration: none;
}
.popup{
position: fixed;
top: 0;
left: 0;
width: 100%;
height: 100%;
background-color: #000;
filter:alpha(opacity=70);
-moz-opacity:0.9;
-khtml-opacity: 0.9;
opacity: 0.9;
z-index: 100;
display: none;
}
.cnt223{
min-width: 503px;
width: 503px;
min-height: 150px;
margin: 100px auto;
background: #fff;
position: relative;
z-index: 103;
padding: 0px;
border-radius: 5px;
box-shadow: 0 2px 5px #000;
}
.cnt223 p{
clear: both;
color: #555555;
text-align: justify;
}
.cnt223 p a{
color: #d91900;
font-weight: bold;
}
.cnt223 .x{
float: right;
height: 35px;
left: 12px;
position: relative;
top: -15px;
width: 34px;
}
.cnt223 .x:hover{
cursor: pointer;
}
    </style>


    <script src="js/jquery-1.5.2.min.js"></script>
    <script type='text/javascript'>
        $(function () {
            var overlay = $('<div id="overlay"></div>');
            overlay.show();
            overlay.appendTo(document.body);
            $('.popup').show();
            $('.close').click(function () {
                $('.popup').hide();
                overlay.appendTo(document.body).remove();
                return false;
            });

            $('.x').click(function () {
                $('.popup').hide();
                overlay.appendTo(document.body).remove();
                return false;
            });
        });
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="overlay"></div>
    <div class='popup'>
           
<div class='cnt223'>
<img src='images/close.png' alt='quit' class='x' id='x' />
<p>
    <img src="images/offer.jpg" alt="Alternate Text" />
<br/>
<br/>

</p>
</div>
           </div>

    </form>
</body>
</html>
