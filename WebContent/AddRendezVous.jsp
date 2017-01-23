<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="d"%>
<html>
<body>
 <div id="external-events" class="bg-dotted">

                         <h6 class="mt30 ml10 text-muted"> Reoccuring Events: </h6>

                        <div class='fc-event fc-event-alert event-recurring' data-event="alert">
                          <d:forEach items="rendezdao" var="rendezdao">
                            <div class="fc-event-icon">
                                <span class="fa fa-bell"></span>
                            </div>
                            
                            <div class="fc-event-desc">
                                <b>${rendezdao.desciption} </b>Take medicine
                            </div>
                            </d:forEach>
                        </div>
                       
         </div>
               </body>    </html> 