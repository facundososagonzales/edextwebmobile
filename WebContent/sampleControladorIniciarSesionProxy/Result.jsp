<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="sampleControladorIniciarSesionProxyid" scope="session" class="publicadores.ControladorIniciarSesionProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleControladorIniciarSesionProxyid.setEndpoint(request.getParameter("endpoint"));
%>

<%
String method = request.getParameter("method");
int methodID = 0;
if (method == null) methodID = -1;

if(methodID != -1) methodID = Integer.parseInt(method);
boolean gotMethod = false;

try {
switch (methodID){ 
case 2:
        gotMethod = true;
        java.lang.String getEndpoint2mtemp = sampleControladorIniciarSesionProxyid.getEndpoint();
if(getEndpoint2mtemp == null){
%>
<%=getEndpoint2mtemp %>
<%
}else{
        String tempResultreturnp3 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getEndpoint2mtemp));
        %>
        <%= tempResultreturnp3 %>
        <%
}
break;
case 5:
        gotMethod = true;
        String endpoint_0id=  request.getParameter("endpoint8");
            java.lang.String endpoint_0idTemp = null;
        if(!endpoint_0id.equals("")){
         endpoint_0idTemp  = endpoint_0id;
        }
        sampleControladorIniciarSesionProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        publicadores.ControladorIniciarSesion getControladorIniciarSesion10mtemp = sampleControladorIniciarSesionProxyid.getControladorIniciarSesion();
if(getControladorIniciarSesion10mtemp == null){
%>
<%=getControladorIniciarSesion10mtemp %>
<%
}else{
        if(getControladorIniciarSesion10mtemp!= null){
        String tempreturnp11 = getControladorIniciarSesion10mtemp.toString();
        %>
        <%=tempreturnp11%>
        <%
        }}
break;
case 13:
        gotMethod = true;
        String arg0_1id=  request.getParameter("arg016");
            java.lang.String arg0_1idTemp = null;
        if(!arg0_1id.equals("")){
         arg0_1idTemp  = arg0_1id;
        }
        String arg1_2id=  request.getParameter("arg118");
            java.lang.String arg1_2idTemp = null;
        if(!arg1_2id.equals("")){
         arg1_2idTemp  = arg1_2id;
        }
        boolean ingresarUsuario13mtemp = sampleControladorIniciarSesionProxyid.ingresarUsuario(arg0_1idTemp,arg1_2idTemp);
        String tempResultreturnp14 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(ingresarUsuario13mtemp));
        %>
        <%= tempResultreturnp14 %>
        <%
break;
case 20:
        gotMethod = true;
        String arg0_3id=  request.getParameter("arg023");
            java.lang.String arg0_3idTemp = null;
        if(!arg0_3id.equals("")){
         arg0_3idTemp  = arg0_3id;
        }
        java.lang.String tipoUsuario20mtemp = sampleControladorIniciarSesionProxyid.tipoUsuario(arg0_3idTemp);
if(tipoUsuario20mtemp == null){
%>
<%=tipoUsuario20mtemp %>
<%
}else{
        String tempResultreturnp21 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(tipoUsuario20mtemp));
        %>
        <%= tempResultreturnp21 %>
        <%
}
break;
}
} catch (Exception e) { 
%>
Exception: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.toString()) %>
Message: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.getMessage()) %>
<%
return;
}
if(!gotMethod){
%>
result: N/A
<%
}
%>
</BODY>
</HTML>