<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="fragments/page_header.jsp">
	<jsp:param name="name" value="Order Receipt" />
</jsp:include>
<div class="row">
	<p class="larger_p">
		Спасибо за заказ, списали <c:out value='${amount}' />. Номер заказа <c:out value='${orderNo}' />. 
	</p>
</div>