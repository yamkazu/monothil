<%@ page import="monothil.Issue" %>
<div class="fieldcontain ${hasErrors(bean: issue, field: 'subject', 'error')} required">
    <label for="subject">
        <g:message code="issue.subject.label" default="Subject" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="subject" required="" value="${issue?.subject}"/>
</div>
<div class="fieldcontain ${hasErrors(bean: issue, field: 'description', 'error')} required">
    <label for="description">
        <g:message code="issue.description.label" default="Description" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="description" required="" value="${issue?.description}"/>
</div>
<div class="fieldcontain ${hasErrors(bean: issue, field: 'issuerName', 'error')} required">
    <label for="issuerName">
        <g:message code="issue.issuerName.label" default="Issuer Name" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="issuerName" required="" value="${issue?.issuerName}"/>
</div>
<div class="fieldcontain ${hasErrors(bean: issue, field: 'issuerEmail', 'error')} required">
    <label for="issuerEmail">
        <g:message code="issue.issuerEmail.label" default="Issuer Email" />
        <span class="required-indicator">*</span>
    </label>
    <g:field type="email" name="issuerEmail" required="" value="${issue?.issuerEmail}"/>
</div>
<div class="fieldcontain ${hasErrors(bean: issue, field: 'assignee', 'error')} required">
    <label for="assignee">
        <g:message code="issue.assignee.label" default="Assignee" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="assignee" required="" value="${issue?.assignee}"/>
</div>
<div class="fieldcontain ${hasErrors(bean: issue, field: 'dueDate', 'error')} required">
    <label for="dueDate">
        <g:message code="issue.dueDate.label" default="Due Date" />
        <span class="required-indicator">*</span>
    </label>
    <g:datePicker name="dueDate" precision="day"  value="${issue?.dueDate}"  />
</div>
<div class="fieldcontain ${hasErrors(bean: issue, field: 'messages', 'error')} ">
    <label for="messages">
        <g:message code="issue.messages.label" default="Messages" />
    </label>
    <g:select name="messages" from="${monothil.Message.list()}" multiple="multiple" optionKey="id" size="5" value="${issue?.messages*.id}" class="many-to-many"/>
</div>
