<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <title><g:message code="default.home.label" /></title>
    </head>
    <body>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link controller="login"><g:message code="nav.login.label"/></g:link></li>
            </ul>
        </div>
        <div id="index-issue" class="content scaffold-index" role="main">
            <h1><g:message code="default.menu.label" /></h1>
            <g:set var="entityName" value="${message(code: 'issue.label')}" />
            <ul>
                <li><g:link class="create" controller="issue" action="create"><g:message code="default.new.label" args="[entityName]"/></g:link>
                  <g:message code="default.description.delimiter"/><g:message code="issue.new.description"/></li>
                <sec:ifAllGranted roles="ROLE_EXPERT">
                <li><g:link class="list" controller="issue" action="list"><g:message code="default.list.label" args="[entityName]"/></g:link>
                  <g:message code="default.description.delimiter"/><g:message code="issue.list.description"/></li>
                </sec:ifAllGranted>
            </ul>
        </div>
    </body>
</html>
