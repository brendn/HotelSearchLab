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
                    <div id="window_title">Search Results</div>
                    <div id="window_text">
                    <h2>Hotels in ${city}</h2>
                        <table>
                            <thead align="left">
                                <tr>
                                    <th>Name</th>
                                    <th>Price</th>
                               </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="hotel" items="${hotels}">
                                    <tr>
                                        <td><c:out value="${hotel.hotelName}"/></td>
                                        <td><c:out value="${hotel.pricePerNight}"/></td>
                                   </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                        <div id="button"><a href="/">Home</a></div><p />
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>