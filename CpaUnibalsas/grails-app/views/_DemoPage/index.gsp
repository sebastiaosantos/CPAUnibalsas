
<%@ page import="kickstartwithbootstrapgrailsplugin._DemoPage" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: '_DemoPage.label', default: '_DemoPage')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="list-_DemoPage" class="content scaffold-list" role="kickstart">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: '_DemoPage.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="myDate" title="${message(code: '_DemoPage.myDate.label', default: 'My Date')}" />
					
						<g:sortableColumn property="myBoolean" title="${message(code: '_DemoPage.myBoolean.label', default: 'My Boolean')}" />
					
						<g:sortableColumn property="myInt" title="${message(code: '_DemoPage.myInt.label', default: 'My Int')}" />
					
						<g:sortableColumn property="myShort" title="${message(code: '_DemoPage.myShort.label', default: 'My Short')}" />
					
						<g:sortableColumn property="myLong" title="${message(code: '_DemoPage.myLong.label', default: 'My Long')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${_DemoPageInstanceList}" status="i" var="_DemoPageInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${_DemoPageInstance.id}">${fieldValue(bean: _DemoPageInstance, field: "name")}</g:link></td>
					
						<td><g:formatDate date="${_DemoPageInstance.myDate}" /></td>
					
						<td><g:formatBoolean boolean="${_DemoPageInstance.myBoolean}" /></td>
					
						<td>${fieldValue(bean: _DemoPageInstance, field: "myInt")}</td>
					
						<td>${fieldValue(bean: _DemoPageInstance, field: "myShort")}</td>
					
						<td>${fieldValue(bean: _DemoPageInstance, field: "myLong")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${_DemoPageInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
