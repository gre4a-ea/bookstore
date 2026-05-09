<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="fragments/page_header.jsp">
	<jsp:param name="name" value="ДОБАВИТЬ АДРЕС" />
</jsp:include>
<div class="row">
	<div class="col-sm-8 col-sm-offset-2">
		<form method="post" action="<c:url value='home.do?action=Address' />">
			<div class="form-group">
				<label for="fName">Имя:</label> <input type="text"
					name="fName" class="form-control" value="${modalAddress.firstName}" />
				<span style="color: red"><c:out
						value="${validationErrors.fName}" /></span>
			</div>
			<div class="form-group">
				<label for="lName">Фамилия:</label> <input type="text"
					name="lName" class="form-control" value="${modalAddress.lastName}" />
				<span style="color: red"><c:out
						value="${validationErrors.lName}" /></span>
			</div>
			<div class="form-group">
				<label for="street1">Дом:</label> <input type="text"
					name="street1" class="form-control" value="${modalAddress.street1}" />
				<span style="color: red"><c:out
						value="${validationErrors.street1}" /></span>
			</div>
			<div class="form-group">
				<label for="street2">Улица:</label> <input type="text"
					name="street2" class="form-control" value="${modalAddress.street2}" />
				<span style="color: red"><c:out
						value="${validationErrors.street2}" /></span>
			</div>
			<div class="form-group">
				<label for="state">Район:</label> <input type="text" name="state"
					class="form-control" value="${modalAddress.state}" /> <span
					style="color: red"><c:out value="${validationErrors.state}" /></span>
			</div>
			<div class="form-group">
				<label for="city">Город:</label> <input type="text" name="city"
					class="form-control" value="${modalAddress.city}" /> <span
					style="color: red"><c:out value="${validationErrors.city}" /></span>
			</div>
			<div class="form-group">
				<label for="pCode">Почтовый номер:</label> <input type="text"
					name="pCode" size="10" class="form-control"
					value="${modalAddress.postalCode}" /> <span style="color: red"><c:out
						value="${validationErrors.pCode}" /></span>
			</div>
			<div class="form-group">
				<input type="hidden" name="hdnId"
					value="<c:out value='${modalAddress.id}' />" /> <input
					type="submit" class="btn btn-primary" name="op"
					value="${modalAddress.id == null ? 'Сохранить' : 'Обновить'}" />
			</div>
		</form>
	</div>
</div>