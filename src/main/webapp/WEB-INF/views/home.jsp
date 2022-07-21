<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Home</title>
        <link rel="stylesheet" type="text/css" href="styles.css" />
    </head>
    <body>
        <div class="box">
            <div id="container">
                <div id="window_main">
                    <div id="window_title">Hotels</div>
                    <div id="window_text">
                        <h2>Hotel Search</h2>
                        <form action="/" method="POST" name="citySelect">
                            City: <select name="city" id="city">
                                        <c:forEach var="city" items="${cities}">
                                            <option value="${city}">${city}</option>
                                        </c:forEach>
                                  </select>
                            <br /> <p />
                            <div id="button"><a href="javascript:document.forms['citySelect'].submit()">Submit</a></div><p />
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>