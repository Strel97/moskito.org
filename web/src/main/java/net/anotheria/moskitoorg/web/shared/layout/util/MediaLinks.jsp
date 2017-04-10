<%@ page 
	contentType="text/html;charset=utf-8" session="true"%><%@ taglib 
	uri="http://www.anotheria.net/ano-tags" prefix="ano"%><%@ taglib 
	uri="http://www.anotheria.net/tags/anosite" prefix="as"%><%@ page 
	isELIgnored="false"
%><ano:iterate 
	name="page" property="mediaLinks" type="net.anotheria.anosite.content.bean.MediaLinkBean" id="mediaLink"><ano:notEmpty 
	name="mediaLink" property="browserFiltering"><%="<!--["%>${mediaLink.browserFiltering}<%="]>\n"%></ano:notEmpty><link <ano:notEmpty 
		name="mediaLink" property="type"> type="${mediaLink.type}"</ano:notEmpty> <ano:notEmpty 
		name="mediaLink" property="rel"> rel="${mediaLink.rel}"</ano:notEmpty> <ano:notEmpty 
		name="mediaLink" property="rev"> rev="${mediaLink.rev}"</ano:notEmpty> <ano:notEmpty 
		name="mediaLink" property="href"> href="${pageContext.request.contextPath}/${mediaLink.href}"</ano:notEmpty> />
<ano:notEmpty name="mediaLink" property="browserFiltering"><%="<![endif]-->\n"%></ano:notEmpty></ano:iterate>