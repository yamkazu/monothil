<%@ page import="monothil.Issue" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'issue.label', default: 'Issue')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-issue" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="list-issue" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <table>
                <thead>
                    <tr>
                        <g:sortableColumn property="subject" title="${message(code: 'issue.subject.label', default: 'Subject')}" />
                        <g:sortableColumn property="description" title="${message(code: 'issue.description.label', default: 'Description')}" />
                        <g:sortableColumn property="issuerName" title="${message(code: 'issue.issuerName.label', default: 'Issuer Name')}" />
                        <g:sortableColumn property="issuerEmail" title="${message(code: 'issue.issuerEmail.label', default: 'Issuer Email')}" />
                        <g:sortableColumn property="assignee" title="${message(code: 'issue.assignee.label', default: 'Assignee')}" />
                        <g:sortableColumn property="dueDate" title="${message(code: 'issue.dueDate.label', default: 'Due Date')}" />
                    </tr>
                </thead>
                <tbody>
                <g:each in="${issueList}" status="i" var="issue">
                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                        <td><g:link action="show" id="${issue.id}">${fieldValue(bean: issue, field: "subject")}</g:link></td>
                        <td>${fieldValue(bean: issue, field: "description")}</td>
                        <td>${fieldValue(bean: issue, field: "issuerName")}</td>
                        <td>${fieldValue(bean: issue, field: "issuerEmail")}</td>
                        <td>${fieldValue(bean: issue, field: "assignee")}</td>
                        <td><g:formatDate date="${issue.dueDate}" /></td>
                    </tr>
                </g:each>
                </tbody>
            </table>
            <div class="pagination">
                <g:paginate total="${issueCount ?: 0}" />
            </div>
        </div>
    </body>
</html>
