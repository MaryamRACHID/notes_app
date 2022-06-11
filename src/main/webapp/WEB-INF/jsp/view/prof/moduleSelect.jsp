<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/security/tags"%>


<jsp:include page="../fragments/profHeader.jsp" />
<div class="container">

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">



            <jsp:include page="../fragments/profmenu.jsp" />

        </div>
    </nav>




    <div>
        <f:form action="${pageContext.request.contextPath}/prof/exportUnModule" method="get" modelAttribute="exportModel">
            Module :&nbsp;
            <f:select path="idModule">
                <c:forEach items="${moduleList}" var="module">
                    <option value="${module.idModule}">${module.titre}
                    </option>
                </c:forEach>
            </f:select>
            <br/><br/>
            Niveau :&nbsp;
            <f:select path="idNiveau">
                <c:forEach items="${niveauList}" var="niveau">
                    <option value="${niveau.idNiveau}">${niveau.titre}
                    </option>
                </c:forEach>
            </f:select>
            <br/><br/>
            Session :&nbsp;
            <select name="sessionUniv">
                <option value="Normale">Session normale</option>
                <option value="Rattrapage">Session de rattrapage</option>

            </select>
            <br/><br/>
            Semestre :&nbsp;
            <select name="semestre">
                <option value="Semestre 1">Semestre 1</option>
                <option value="Semestre 2">Semestre 2</option>

            </select>
            <br/><br/>
            <input type="submit" value="Submit"/>
        </f:form>
    </div>



    <jsp:include page="../fragments/userfooter.jsp" />
