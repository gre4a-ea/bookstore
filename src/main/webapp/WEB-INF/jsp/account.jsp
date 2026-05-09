<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="row">
	<div class="col-sm-12">
		<div class="panel panel-default">
			<div class="panel-heading clearfix">
				<b>Данные карты</b>
				<div class="btn-group pull-right">
					<c:choose>
						<c:when test="${empty creditCard}">
							<a href="<c:url value='home.do?action=CreditCard&op=new' />"
								class="btn btn-primary btn-sm">Добавить карту</a>
						</c:when>
						<c:otherwise>
							<a
								href="<c:url value='home.do?action=CreditCard&op=edit&id=${creditCard.id}' />"
								class="btn btn-primary btn-sm">Изменить карту</a>
						</c:otherwise>
					</c:choose>

				</div>
			</div>
			<div class="panel-body">
				<c:if test="${not empty creditCard}">
					<form class="form-horizontal" role="form">
						<fieldset>
							<div class="form-group">
								<label class="col-sm-3 control-label" for="card-holder-name">Имя на карте</label>
								<div class="col-sm-9">
									<span class="col-sm-3 control-label"><c:out
											value="${creditCard.cardOwner}" /></span>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label" for="card-holder-name">Тип карты</label>
								<div class="col-sm-9">
									<span class="col-sm-3 control-label"><c:out
											value="${creditCard.cardType}" /></span>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label" for="card-number">Номер карты</label>
								<div class="col-sm-9">
									<span class="col-sm-3 control-label"><c:out
											value="${creditCard.cardNumber}" /></span>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label" for="expiry-month">Срок действия</label>
								<div class="col-sm-9">
									<span class="col-sm-3 control-label"><c:out
											value="${creditCard.expMonth} / ${creditCard.expYear}" /></span>
								</div>
							</div>
						</fieldset>
					</form>
				</c:if>
			</div>
		</div>
	</div>
	<div class="col-sm-12">
		<div class="panel panel-default">
			<div class="panel-heading clearfix">
				<b>Список адресов</b>
				<div class="btn-group pull-right">
					<a href="<c:url value='home.do?action=Address&op=new' />"
						class="btn btn-primary btn-sm">Добавить адрес</a>
				</div>
			</div>
			<div class="panel-body">
				<c:if test="${not empty addresses}">
					<div class="table-responsive">
						<table class="table table-bordered">
							<thead>
								<tr>
									<th>Имя</th>
									<th>Город</th>
									<th>Дом</th>
									<th>Улица</th>
									<th>Район</th>
									<th>Почтовый номер</th>
									<th>Действия</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${addresses}" var="address">
									<tr>
										<td><c:out value="${address.fullName}" /></td>
										<td><c:out value="${address.city}" /></td>
										<td><c:out value="${address.street1}" /></td>
										<td><c:out value="${address.street2}" /></td>
										<td><c:out value="${address.state}" /></td>
										<td><c:out value="${address.postalCode}" /></td>
										<td><a
											href="<c:url value='home.do?action=Address&op=edit&id=${address.id}' />"
											class="btn btn-primary btn-sm"><i class="fa fa-edit"></i></a>
											<a
											href="<c:url value='home.do?action=Address&op=delete&id=${address.id}' />"
											class="btn btn-danger btn-sm"><i class="fa fa-trash-o"></i></a>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</c:if>
			</div>
		</div>
	</div>

</div>
