
<%@ page import="kickstartwithbootstrapgrailsplugin._DemoPage" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: '_DemoPage.label', default: '_DemoPage')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="show-_DemoPage" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="table _DemoPage">
			
				<g:if test="${_DemoPageInstance?.name}">
				<li class="prop">
					<span id="name-label" class="name"><g:message code="_DemoPage.name.label" default="Name" /></span>
					
						<span class="value" aria-labelledby="name-label"><g:fieldValue bean="${_DemoPageInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${_DemoPageInstance?.myDate}">
				<li class="prop">
					<span id="myDate-label" class="name"><g:message code="_DemoPage.myDate.label" default="My Date" /></span>
					
						<span class="value" aria-labelledby="myDate-label"><g:formatDate date="${_DemoPageInstance?.myDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${_DemoPageInstance?.myBoolean}">
				<li class="prop">
					<span id="myBoolean-label" class="name"><g:message code="_DemoPage.myBoolean.label" default="My Boolean" /></span>
					
						<span class="value" aria-labelledby="myBoolean-label"><g:formatBoolean boolean="${_DemoPageInstance?.myBoolean}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${_DemoPageInstance?.myInt}">
				<li class="prop">
					<span id="myInt-label" class="name"><g:message code="_DemoPage.myInt.label" default="My Int" /></span>
					
						<span class="value" aria-labelledby="myInt-label"><g:fieldValue bean="${_DemoPageInstance}" field="myInt"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${_DemoPageInstance?.myShort}">
				<li class="prop">
					<span id="myShort-label" class="name"><g:message code="_DemoPage.myShort.label" default="My Short" /></span>
					
						<span class="value" aria-labelledby="myShort-label"><g:fieldValue bean="${_DemoPageInstance}" field="myShort"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${_DemoPageInstance?.myLong}">
				<li class="prop">
					<span id="myLong-label" class="name"><g:message code="_DemoPage.myLong.label" default="My Long" /></span>
					
						<span class="value" aria-labelledby="myLong-label"><g:fieldValue bean="${_DemoPageInstance}" field="myLong"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${_DemoPageInstance?.myFloat}">
				<li class="prop">
					<span id="myFloat-label" class="name"><g:message code="_DemoPage.myFloat.label" default="My Float" /></span>
					
						<span class="value" aria-labelledby="myFloat-label"><g:fieldValue bean="${_DemoPageInstance}" field="myFloat"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${_DemoPageInstance?.myDouble}">
				<li class="prop">
					<span id="myDouble-label" class="name"><g:message code="_DemoPage.myDouble.label" default="My Double" /></span>
					
						<span class="value" aria-labelledby="myDouble-label"><g:fieldValue bean="${_DemoPageInstance}" field="myDouble"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${_DemoPageInstance?.myByte}">
				<li class="prop">
					<span id="myByte-label" class="name"><g:message code="_DemoPage.myByte.label" default="My Byte" /></span>
					
						<span class="value" aria-labelledby="myByte-label"><g:fieldValue bean="${_DemoPageInstance}" field="myByte"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${_DemoPageInstance?.myChar}">
				<li class="prop">
					<span id="myChar-label" class="name"><g:message code="_DemoPage.myChar.label" default="My Char" /></span>
					
						<span class="value" aria-labelledby="myChar-label"><g:fieldValue bean="${_DemoPageInstance}" field="myChar"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${_DemoPageInstance?.myByteArray}">
				<li class="prop">
					<span id="myByteArray-label" class="name"><g:message code="_DemoPage.myByteArray.label" default="My Byte Array" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${_DemoPageInstance?.myInteger}">
				<li class="prop">
					<span id="myInteger-label" class="name"><g:message code="_DemoPage.myInteger.label" default="My Integer" /></span>
					
						<span class="value" aria-labelledby="myInteger-label"><g:fieldValue bean="${_DemoPageInstance}" field="myInteger"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${_DemoPageInstance?.myTimeZone}">
				<li class="prop">
					<span id="myTimeZone-label" class="name"><g:message code="_DemoPage.myTimeZone.label" default="My Time Zone" /></span>
					
						<span class="value" aria-labelledby="myTimeZone-label"><g:fieldValue bean="${_DemoPageInstance}" field="myTimeZone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${_DemoPageInstance?.myLocale}">
				<li class="prop">
					<span id="myLocale-label" class="name"><g:message code="_DemoPage.myLocale.label" default="My Locale" /></span>
					
						<span class="value" aria-labelledby="myLocale-label"><g:fieldValue bean="${_DemoPageInstance}" field="myLocale"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${_DemoPageInstance?.myCurrency}">
				<li class="prop">
					<span id="myCurrency-label" class="name"><g:message code="_DemoPage.myCurrency.label" default="My Currency" /></span>
					
						<span class="value" aria-labelledby="myCurrency-label"><g:fieldValue bean="${_DemoPageInstance}" field="myCurrency"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${_DemoPageInstance?.dateCreated}">
				<li class="prop">
					<span id="dateCreated-label" class="name"><g:message code="_DemoPage.dateCreated.label" default="Date Created" /></span>
					
						<span class="value" aria-labelledby="dateCreated-label"><g:formatDate date="${_DemoPageInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${_DemoPageInstance?.lastUpdated}">
				<li class="prop">
					<span id="lastUpdated-label" class="name"><g:message code="_DemoPage.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="value" aria-labelledby="lastUpdated-label"><g:formatDate date="${_DemoPageInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${_DemoPageInstance?.myDate2}">
				<li class="prop">
					<span id="myDate2-label" class="name"><g:message code="_DemoPage.myDate2.label" default="My Date2" /></span>
					
						<span class="value" aria-labelledby="myDate2-label"><g:formatDate date="${_DemoPageInstance?.myDate2}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${_DemoPageInstance?.myEnum}">
				<li class="prop">
					<span id="myEnum-label" class="name"><g:message code="_DemoPage.myEnum.label" default="My Enum" /></span>
					
						<span class="value"myEnum-label"><g:fieldValue bean="${_DemoPageInstance}" field="myEnum"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:_DemoPageInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${_DemoPageInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-default btn-lg" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
