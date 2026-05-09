<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="fragments/page_header.jsp">
	<jsp:param name="name" value="ПОДТВЕРЖДЕНИЕ ЗАКАЗА" />
</jsp:include>
<div class="row">
	<div class="col-sm-12">
		<table class="table table-hover table-condensed">
			<thead>
				<tr>
					<th style="width: 50%">Описание товара</th>
					<th style="width: 15%">Цена</th>
					<th style="width: 15%">Количество</th>
					<th style="width: 10%"></th>
					<th style="width: 10%">Сумма</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="item" items="${cart.items}">
					<tr>
						<td data-th="Product">
							<div class="row">
								<div class="col-sm-2 hidden-xs">
									<img
										src="<c:url value='resources/images/books/${item.product.imageUrl}' />"
										alt="Cover Image" class="img-responsive" />
								</div>
								<div class="col-sm-10">
									<h4 class="nomargin">${item.product.title}</h4>
								</div>
							</div>
						</td>
						<td data-th="Price">${item.product.priceCurrencyFormat}</td>
						<td data-th="Quantity">${item.quantity}</td>
						<td></td>
						<td data-th="Subtotal">${item.totalPriceCurrencyFormat}</td>
					</tr>
				</c:forEach>
			</tbody>
			<tfoot>
				<tr class="visible-xs"></tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td class="hidden-xs text-center">Итого<br /> Доставка <br />
						Налог <br /> <strong>Сумма заказа </strong></td>
					<td>${cart.totalPriceCurrencyFormat}<br />$0 <br /> $0 <br />
						<strong>${cart.totalPriceCurrencyFormat}</strong></td>
				</tr>
			</tfoot>
		</table>

		<div class="row">
			<div class="col-sm-6">
				<h4>
					<b>Заказ будет доставлен по адресу</b>
				</h4>
				${sessionScope.address.firstName}&nbsp;${sessionScope.address.lastName}
				<br /> ${sessionScope.address.street1} <br />
				${sessionScope.address.street2} <br />
				${sessionScope.address.city},&nbsp;&nbsp;${sessionScope.address.state}&nbsp;${sessionScope.address.postalCode}
			</div>
			<div class="col-sm-6">
				<h4>
					<b>Оплата будет списана с карты</b>
				</h4>
				${card.cardOwner} <br /> ${card.cardType} <br />
				${card.obscuredNumber} <br /> ${card.expMonth}/${card.expYear}
			</div>
		</div>

		<div class="row">
			<div class="form-group" align="right">
				<div class="col-xs-12 col-sm-12 col-md-12">
					<form method="post" action="<c:url value='home.do?action=Order' />">
						<button type="submit" class="btn btn-primary btn-submit-fix">ОПЛАТИТЬ</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
