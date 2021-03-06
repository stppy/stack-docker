<%--

    Licensed to Jasig under one or more contributor license
    agreements. See the NOTICE file distributed with this work
    for additional information regarding copyright ownership.
    Jasig licenses this file to you under the Apache License,
    Version 2.0 (the "License"); you may not use this file
    except in compliance with the License.  You may obtain a
    copy of the License at the following location:

      http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing,
    software distributed under the License is distributed on an
    "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
    KIND, either express or implied.  See the License for the
    specific language governing permissions and limitations
    under the License.

--%>
<jsp:directive.include file="includes/top.jsp" />


  <form:form method="post" id="form-div" commandName="${commandName}" htmlEscape="true">

    <form:errors path="*" id="msg" cssClass="errors" element="div" htmlEscape="false" /> 
      
          
      <c:choose>
        <c:when test="${not empty sessionScope.openIdLocalId}">
          <strong>${sessionScope.openIdLocalId}</strong>
          <input type="hidden" id="username" name="username" value="${sessionScope.openIdLocalId}" />
        </c:when>
        <c:otherwise>          
          <form:input class="feedback-input" placeholder="Ingrese su Usuario" id="username" size="25" tabindex="1" accesskey="${userNameAccessKey}" path="username" autocomplete="off" htmlEscape="true" />
        </c:otherwise>
      </c:choose>
                  
      <%--
      NOTE: Certain browsers will offer the option of caching passwords for a user.  There is a non-standard attribute,
      "autocomplete" that when set to "off" will tell certain browsers not to prompt to cache credentials.  For more
      information, see the following web page:
      http://www.technofundo.com/tech/web/ie_autocomplete.html
      --%>      
      <form:password class="feedback-input" placeholder="Clave Asignada" id="password" size="25" tabindex="2" path="password"  accesskey="${passwordAccessKey}" htmlEscape="true" autocomplete="off" />                 
  
    
    <div class="submit">
      <input type="hidden" name="lt" value="${loginTicket}" />
      <input type="hidden" name="execution" value="${flowExecutionKey}" />
      <input type="hidden" name="_eventId" value="submit" />

      <input name="submit" accesskey="l" id="button-blue" value="<spring:message code="screen.welcome.button.login" />" tabindex="4" type="submit" />
      <%-- <input class="button-blue" name="reset" accesskey="c" value="<spring:message code="screen.welcome.button.clear" />" tabindex="5" type="reset" /> --%>
    </div>
  </form:form>
      
      </div><!-- /.content-wrapper -->     

<jsp:directive.include file="includes/bottom.jsp" />