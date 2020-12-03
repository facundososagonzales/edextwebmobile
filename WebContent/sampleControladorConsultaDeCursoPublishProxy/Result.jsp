<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="sampleControladorConsultaDeCursoPublishProxyid" scope="session" class="publicadores.ControladorConsultaDeCursoPublishProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleControladorConsultaDeCursoPublishProxyid.setEndpoint(request.getParameter("endpoint"));
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
        java.lang.String getEndpoint2mtemp = sampleControladorConsultaDeCursoPublishProxyid.getEndpoint();
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
        sampleControladorConsultaDeCursoPublishProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        publicadores.ControladorConsultaDeCursoPublish getControladorConsultaDeCursoPublish10mtemp = sampleControladorConsultaDeCursoPublishProxyid.getControladorConsultaDeCursoPublish();
if(getControladorConsultaDeCursoPublish10mtemp == null){
%>
<%=getControladorConsultaDeCursoPublish10mtemp %>
<%
}else{
        if(getControladorConsultaDeCursoPublish10mtemp!= null){
        String tempreturnp11 = getControladorConsultaDeCursoPublish10mtemp.toString();
        %>
        <%=tempreturnp11%>
        <%
        }}
break;
case 13:
        gotMethod = true;
        String arg0_1id=  request.getParameter("arg030");
            java.lang.String arg0_1idTemp = null;
        if(!arg0_1id.equals("")){
         arg0_1idTemp  = arg0_1id;
        }
        publicadores.DtInfoProgCurso seleccionarCurso13mtemp = sampleControladorConsultaDeCursoPublishProxyid.seleccionarCurso(arg0_1idTemp);
if(seleccionarCurso13mtemp == null){
%>
<%=seleccionarCurso13mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">texto:</TD>
<TD>
<%
if(seleccionarCurso13mtemp != null){
java.lang.String typetexto16 = seleccionarCurso13mtemp.getTexto();
        String tempResulttexto16 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typetexto16));
        %>
        <%= tempResulttexto16 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">dt:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">url:</TD>
<TD>
<%
if(seleccionarCurso13mtemp != null){
publicadores.DtCursoDetalle1 tebece0=seleccionarCurso13mtemp.getDt();
if(tebece0 != null){
java.lang.String typeurl20 = tebece0.getUrl();
        String tempResulturl20 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeurl20));
        %>
        <%= tempResulturl20 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">creditos:</TD>
<TD>
<%
if(seleccionarCurso13mtemp != null){
publicadores.DtCursoDetalle1 tebece0=seleccionarCurso13mtemp.getDt();
if(tebece0 != null){
%>
<%=tebece0.getCreditos()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">cantHoras:</TD>
<TD>
<%
if(seleccionarCurso13mtemp != null){
publicadores.DtCursoDetalle1 tebece0=seleccionarCurso13mtemp.getDt();
if(tebece0 != null){
publicadores.Time typecantHoras24 = tebece0.getCantHoras();
        if(typecantHoras24!= null){
        String tempcantHoras24 = typecantHoras24.toString();
        %>
        <%=tempcantHoras24%>
        <%
        }}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">duracion:</TD>
<TD>
<%
if(seleccionarCurso13mtemp != null){
publicadores.DtCursoDetalle1 tebece0=seleccionarCurso13mtemp.getDt();
if(tebece0 != null){
java.lang.String typeduracion26 = tebece0.getDuracion();
        String tempResultduracion26 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeduracion26));
        %>
        <%= tempResultduracion26 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">fechaR:</TD>
<TD>
<%
if(seleccionarCurso13mtemp != null){
publicadores.DtCursoDetalle1 tebece0=seleccionarCurso13mtemp.getDt();
if(tebece0 != null){
java.util.Calendar typefechaR28 = tebece0.getFechaR();
        java.text.DateFormat dateFormatfechaR28 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaR28 = typefechaR28.getTime();
        String tempResultfechaR28 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaR28.format(datefechaR28));
        %>
        <%= tempResultfechaR28 %>
        <%
}}%>
</TD>
</TABLE>
<%
}
break;
case 32:
        gotMethod = true;
        String arg0_2id=  request.getParameter("arg035");
            java.lang.String arg0_2idTemp = null;
        if(!arg0_2id.equals("")){
         arg0_2idTemp  = arg0_2id;
        }
        publicadores.DtCursoBase[] ingresarInstituto32mtemp = sampleControladorConsultaDeCursoPublishProxyid.ingresarInstituto(arg0_2idTemp);
if(ingresarInstituto32mtemp == null){
%>
<%=ingresarInstituto32mtemp %>
<%
}else{
        String tempreturnp33 = null;
        if(ingresarInstituto32mtemp != null){
        java.util.List listreturnp33= java.util.Arrays.asList(ingresarInstituto32mtemp);
        tempreturnp33 = listreturnp33.toString();
        }
        %>
        <%=tempreturnp33%>
        <%
}
break;
case 37:
        gotMethod = true;
        String arg0_3id=  request.getParameter("arg048");
            java.lang.String arg0_3idTemp = null;
        if(!arg0_3id.equals("")){
         arg0_3idTemp  = arg0_3id;
        }
        publicadores.DtProgCurso seleccionarPrograma37mtemp = sampleControladorConsultaDeCursoPublishProxyid.seleccionarPrograma(arg0_3idTemp);
if(seleccionarPrograma37mtemp == null){
%>
<%=seleccionarPrograma37mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaI:</TD>
<TD>
<%
if(seleccionarPrograma37mtemp != null){
java.util.Calendar typefechaI40 = seleccionarPrograma37mtemp.getFechaI();
        java.text.DateFormat dateFormatfechaI40 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaI40 = typefechaI40.getTime();
        String tempResultfechaI40 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaI40.format(datefechaI40));
        %>
        <%= tempResultfechaI40 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">descripcion:</TD>
<TD>
<%
if(seleccionarPrograma37mtemp != null){
java.lang.String typedescripcion42 = seleccionarPrograma37mtemp.getDescripcion();
        String tempResultdescripcion42 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion42));
        %>
        <%= tempResultdescripcion42 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaF:</TD>
<TD>
<%
if(seleccionarPrograma37mtemp != null){
java.util.Calendar typefechaF44 = seleccionarPrograma37mtemp.getFechaF();
        java.text.DateFormat dateFormatfechaF44 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaF44 = typefechaF44.getTime();
        String tempResultfechaF44 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaF44.format(datefechaF44));
        %>
        <%= tempResultfechaF44 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(seleccionarPrograma37mtemp != null){
java.lang.String typenombre46 = seleccionarPrograma37mtemp.getNombre();
        String tempResultnombre46 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre46));
        %>
        <%= tempResultnombre46 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 50:
        gotMethod = true;
        String arg0_4id=  request.getParameter("arg055");
            java.lang.String arg0_4idTemp = null;
        if(!arg0_4id.equals("")){
         arg0_4idTemp  = arg0_4id;
        }
        publicadores.DtEdicionDetalle seleccionarEdicion50mtemp = sampleControladorConsultaDeCursoPublishProxyid.seleccionarEdicion(arg0_4idTemp);
if(seleccionarEdicion50mtemp == null){
%>
<%=seleccionarEdicion50mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaPub:</TD>
<TD>
<%
if(seleccionarEdicion50mtemp != null){
java.util.Calendar typefechaPub53 = seleccionarEdicion50mtemp.getFechaPub();
        java.text.DateFormat dateFormatfechaPub53 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaPub53 = typefechaPub53.getTime();
        String tempResultfechaPub53 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaPub53.format(datefechaPub53));
        %>
        <%= tempResultfechaPub53 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 57:
        gotMethod = true;
        String arg0_5id=  request.getParameter("arg062");
            java.lang.String arg0_5idTemp = null;
        if(!arg0_5id.equals("")){
         arg0_5idTemp  = arg0_5id;
        }
        publicadores.DtEdicionDetalle seleccionarEdicionCat57mtemp = sampleControladorConsultaDeCursoPublishProxyid.seleccionarEdicionCat(arg0_5idTemp);
if(seleccionarEdicionCat57mtemp == null){
%>
<%=seleccionarEdicionCat57mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaPub:</TD>
<TD>
<%
if(seleccionarEdicionCat57mtemp != null){
java.util.Calendar typefechaPub60 = seleccionarEdicionCat57mtemp.getFechaPub();
        java.text.DateFormat dateFormatfechaPub60 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaPub60 = typefechaPub60.getTime();
        String tempResultfechaPub60 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaPub60.format(datefechaPub60));
        %>
        <%= tempResultfechaPub60 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 64:
        gotMethod = true;
        String arg0_6id=  request.getParameter("arg081");
            java.lang.String arg0_6idTemp = null;
        if(!arg0_6id.equals("")){
         arg0_6idTemp  = arg0_6id;
        }
        publicadores.DtInfoProgCurso seleccionarCursoEnCat64mtemp = sampleControladorConsultaDeCursoPublishProxyid.seleccionarCursoEnCat(arg0_6idTemp);
if(seleccionarCursoEnCat64mtemp == null){
%>
<%=seleccionarCursoEnCat64mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">texto:</TD>
<TD>
<%
if(seleccionarCursoEnCat64mtemp != null){
java.lang.String typetexto67 = seleccionarCursoEnCat64mtemp.getTexto();
        String tempResulttexto67 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typetexto67));
        %>
        <%= tempResulttexto67 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">dt:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">url:</TD>
<TD>
<%
if(seleccionarCursoEnCat64mtemp != null){
publicadores.DtCursoDetalle1 tebece0=seleccionarCursoEnCat64mtemp.getDt();
if(tebece0 != null){
java.lang.String typeurl71 = tebece0.getUrl();
        String tempResulturl71 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeurl71));
        %>
        <%= tempResulturl71 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">creditos:</TD>
<TD>
<%
if(seleccionarCursoEnCat64mtemp != null){
publicadores.DtCursoDetalle1 tebece0=seleccionarCursoEnCat64mtemp.getDt();
if(tebece0 != null){
%>
<%=tebece0.getCreditos()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">cantHoras:</TD>
<TD>
<%
if(seleccionarCursoEnCat64mtemp != null){
publicadores.DtCursoDetalle1 tebece0=seleccionarCursoEnCat64mtemp.getDt();
if(tebece0 != null){
publicadores.Time typecantHoras75 = tebece0.getCantHoras();
        if(typecantHoras75!= null){
        String tempcantHoras75 = typecantHoras75.toString();
        %>
        <%=tempcantHoras75%>
        <%
        }}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">duracion:</TD>
<TD>
<%
if(seleccionarCursoEnCat64mtemp != null){
publicadores.DtCursoDetalle1 tebece0=seleccionarCursoEnCat64mtemp.getDt();
if(tebece0 != null){
java.lang.String typeduracion77 = tebece0.getDuracion();
        String tempResultduracion77 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeduracion77));
        %>
        <%= tempResultduracion77 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">fechaR:</TD>
<TD>
<%
if(seleccionarCursoEnCat64mtemp != null){
publicadores.DtCursoDetalle1 tebece0=seleccionarCursoEnCat64mtemp.getDt();
if(tebece0 != null){
java.util.Calendar typefechaR79 = tebece0.getFechaR();
        java.text.DateFormat dateFormatfechaR79 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaR79 = typefechaR79.getTime();
        String tempResultfechaR79 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaR79.format(datefechaR79));
        %>
        <%= tempResultfechaR79 %>
        <%
}}%>
</TD>
</TABLE>
<%
}
break;
case 83:
        gotMethod = true;
        String arg0_7id=  request.getParameter("arg086");
            java.lang.String arg0_7idTemp = null;
        if(!arg0_7id.equals("")){
         arg0_7idTemp  = arg0_7id;
        }
        publicadores.DtCursoBase[] ingresarCategoria83mtemp = sampleControladorConsultaDeCursoPublishProxyid.ingresarCategoria(arg0_7idTemp);
if(ingresarCategoria83mtemp == null){
%>
<%=ingresarCategoria83mtemp %>
<%
}else{
        String tempreturnp84 = null;
        if(ingresarCategoria83mtemp != null){
        java.util.List listreturnp84= java.util.Arrays.asList(ingresarCategoria83mtemp);
        tempreturnp84 = listreturnp84.toString();
        }
        %>
        <%=tempreturnp84%>
        <%
}
break;
case 88:
        gotMethod = true;
        String nombre_9id=  request.getParameter("nombre93");
            java.lang.String nombre_9idTemp = null;
        if(!nombre_9id.equals("")){
         nombre_9idTemp  = nombre_9id;
        }
        %>
        <jsp:useBean id="publicadores1DtEdicionBasico_8id" scope="session" class="publicadores.DtEdicionBasico" />
        <%
        publicadores1DtEdicionBasico_8id.setNombre(nombre_9idTemp);
        sampleControladorConsultaDeCursoPublishProxyid.ingresarDt(publicadores1DtEdicionBasico_8id);
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