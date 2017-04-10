<%@ page contentType="text/html;charset=utf-8" session="true"
        %><%@ taglib uri="http://www.anotheria.net/ano-tags" prefix="ano"
        %><%@ page isELIgnored ="false" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title><ano:write name="pagex" property="title"/></title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta name="description" content="<ano:write name="site" property="description"/>"/>
    <meta name="keywords" content="<ano:write name="site" property="keywords"/>"/>
    <link rel="shortcut icon" href="static-int/img/favicon.ico" type="image/x-icon">
    <jsp:include flush="true" page="util/MediaLinks.jsp" />

    <link href='http://fonts.googleapis.com/css?family=Handlee' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700' rel='stylesheet' type='text/css'>
    <!--Icons on the page may be changed by simply inserting the icon name.
    Icon names and previews are here: http://fortawesome.github.io/Font-Awesome/icons/ -->
</head>
<body class="home">
<div id="fb-root"></div>
<script>(function (d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s);
    js.id = id;
    js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<div itemscope itemtype="http://schema.org/SoftwareApplication" class="wrapper">
    <!-- HEADER -->
    <ano:define id="__boxlist" toScope="request" name="page" property="headerBoxes" />
    <jsp:include page="/net/anotheria/anosite/layout/templates/ListIterator.jsp" flush="false" />
    <!-- HEADER END-->

    <!-- Column1 -->
    <div class="content">
        <ano:define id="__boxlist" toScope="request" name="page" property="column1" />
        <jsp:include page="/net/anotheria/anosite/layout/templates/ListIterator.jsp" flush="false" />
    </div>
    <!-- Column1 END -->



    <!-- Column2 -->
    <div class="footer">
        <ano:define id="__boxlist" toScope="request" name="page" property="column2" />
        <jsp:include page="/net/anotheria/anosite/layout/templates/ListIterator.jsp" flush="false" />
    </div>
    <!-- Column2 END -->

    <!-- Column3 -->
    <ano:define id="__boxlist" toScope="request" name="page" property="column3" />
    <jsp:include page="/net/anotheria/anosite/layout/templates/ListIterator.jsp" flush="false" />
    <!-- Column3 END -->

</div>

    <!-- Footer Boxes -->
    <ano:define id="__boxlist" toScope="request" name="page" property="footerBoxes" />
    <jsp:include page="/net/anotheria/anosite/layout/templates/ListIterator.jsp" flush="false" />
    <!-- Footer Boxes END -->


    <jsp:include flush="true" page="util/Scripts.jsp" />

    <!--
    Version: <ano:write name="applicationMavenVersion"/>${applicationMavenVersion}
    Server: <ano:write name="requestServerName"/>${requestServerName}
    -->
</body>
</html>