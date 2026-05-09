<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="row">
	<div class="col-sm-12">
		<div class="panel panel-default">
			<div class="panel-heading clearfix">
				<b>Детали заказа</b>
				<div class="btn-group pull-right">
					<a href="<c:url value='home.do?action=OrderHistory' />">История заказов</a>
				</div>
			</div>
			<div class="panel-body">
				<div class="row">
					<div class="col-sm-12">
						<table class="table table-hover table-condensed table-bordered">
							<thead>
								<tr>
									<th style="width: 50%">Описание товара</th>
									<th style="width: 15%">цена</th>
									<th style="width: 15%">Количество</th>
									<th style="width: 20%" class="text-center">Сумма</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="item" items="${order.items}">
									<tr>
										<td data-th="Product">
											<div class="row">
												<div class="col-sm-10">
													<h4 class="nomargin">${item.productTitle}</h4>
												</div>
											</div>
										</td>
										<td data-th="Price">${item.priceCurrencyFormat}</td>
										<td data-th="Quantity">${item.quantity}</td>
										<td data-th="Subtotal" class="text-center">${item.totalPriceCurrencyFormat}</td>
									</tr>
								</c:forEach>
							</tbody>
							<tfoot>
								<tr class="visible-xs"></tr>
								<tr>
									<td></td>
									<td colspan="2" class="hidden-xs"></td>
									<td class="hidden-xs text-center"><strong>Итого
											${order.orderTotalString}</strong></td>
								</tr>
							</tfoot>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
