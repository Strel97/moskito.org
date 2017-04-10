<%@ page language="java" contentType="text/html;charset=UTF-8" session="true" isELIgnored="false" %>
<%@ taglib uri="http://www.anotheria.net/ano-tags" prefix="ano" %>
<%@ taglib uri="/WEB-INF/tlds/anosite.tld" prefix="as"%>

<div class="main-box">
    <div class="container">
        <div class="main-info">
            <!-- Rich snippet: description -->
            <h1 itemprop="name"><as:resource key="home.teaser.heading.main.text" /></h1>

            <p>
                <!-- Rich snippet: name -->
                <span itemprop="description">
                    <as:resource key="home.teaser.heading.bottom.text" />
                </span>
            </p>
        </div>
        <div class="left-view-area">
            <h3><as:resource key="home.teaser.integrate.slogan" /></h3>

            <p><as:resource key="home.teaser.integrate.description" /></p>
            <img src="../static-int/img/arrow_right.png" class="cursive-arrow-right">
        </div>
        <div class="right-view-area">
            <h3><as:resource key="home.teaser.analyze.slogan" /></h3>

            <p><as:resource key="home.teaser.analyze.description" /></p>
            <img src="../static-int/img/arrow_left.png" class="cursive-arrow-left">
        </div>
        <div class="view-box">
            <div class="view-area">
                <div class="integrate-box">
                    <div class="bg"></div>
                    <div class="rline"></div>
                </div>
                <div class="inspect-box"></div>
            </div>
        </div>
    </div>
    <div class="btnline">
        <div class="container">
            <div class="row-fluid">
                <div class="span6 text-right"><a href="integration.html" class="btn blue-btn"><as:resource key="home.teaser.button.integration" /></a></div>
                <div class="span6 text-left"><a href="moskitorize-your-application.html" class="btn green-btn"><as:resource key="home.teaser.button.moskitorize" /></a></div>
            </div>
        </div>
    </div>
</div>