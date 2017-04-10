<%@ page 
	contentType="text/html;charset=utf-8" session="true"%><%@ taglib 
	uri="http://www.anotheria.net/ano-tags" prefix="ano"%><%@ taglib 
	uri="http://www.anotheria.net/tags/anosite" prefix="as"%><%@ page 
	isELIgnored="false"
%>
<ano:present name="vSettings"><script type="text/javascript"><%="\n"%>validationConfig = ${vSettings};<%="\n"%></script></ano:present>
<ano:present name="vResponse"><script type="text/javascript"><%="\n"%>validationResponse = ${vResponse};<%="\n"%></script></ano:present>
<ano:present name="jsData"><script type="text/javascript"><%="\n"%>javascriptData = ${jsData};<%="\n"%></script></ano:present>
<ano:iterate
	name="page" property="scripts" type="net.anotheria.anosite.content.bean.ScriptBean" id="script"><ano:notEmpty 
	name="script" property="browserFiltering"><%="<!--["%>${script.browserFiltering}<%="]>\n"%></ano:notEmpty><ano:notEmpty 
		name="script" property="link"><script type="text/javascript" src="${pageContext.request.contextPath}/<ano:write name="script" property="link" filter="false"/>"></script></ano:notEmpty><ano:notEmpty 
		name="script" property="content"><script type="text/javascript"><%="\n"%><ano:write name="script" property="content" filter="false"/><%="\n"%></script></ano:notEmpty>
<ano:notEmpty name="script" property="browserFiltering"><%="<![endif]-->\n"%></ano:notEmpty></ano:iterate>