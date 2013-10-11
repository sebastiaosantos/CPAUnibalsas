<div class="">
	<ul class="nav nav-tabs" data-role="listview" data-split-icon="gear" data-filter="true">
	
		<g:each status="i" var="c" in="${grailsApplication.controllerClasses.sort { it.logicalPropertyName } }">
		   <g:if test="${c.logicalPropertyName != 'dbdoc' && c.logicalPropertyName !=  '_DemoPage'}"><%-- 
		   <p> ${c.logicalPropertyName} </p>
			--%><li class="controller${params.controller == c.logicalPropertyName ? " active" : ""}">
				<g:link controller="${c.logicalPropertyName}" action="index">
					<g:message code="${c.logicalPropertyName}.label" default="${c.logicalPropertyName.capitalize()}"/>
				</g:link>
			</li>
			</g:if>
		</g:each>
		
	
	
	
</div>
