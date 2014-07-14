<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'issue.label', default: 'Issue')}" />
        <title><g:message code="default.index.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#index-issue" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
            </ul>
        </div>
        <div id="index-issue" class="content scaffold-index" role="main">
            <h1><g:message code="default.menu.label" /></h1>
            <ul>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]"/></g:link></li>
                <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
            </ul>
        </div>
    </body>
</html>
