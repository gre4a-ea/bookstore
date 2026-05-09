<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div>
	<nav class="navbar navbar-default" role="navigation">
		<div class="container-fluid navbar-border">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#navbarCollapse">
					<span class="sr-only">Навигация</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"> <img
					src="resources/images/logo.png" style="width: 150px"
					title="BooksStore" alt="BooksStore">
				</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="navbarCollapse">
				<ul class="nav navbar-nav">
					<li><a href="<c:url value='home.do?action=NewArrival' />">Главная</a></li>
					<li><a href="<c:url value='home.do?action=Product' />">Книги</a></li>
					<li class="dropdown"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#">Категории <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<c:forEach items="${categories}" var="category">
								<li><a
									href="<c:url value='home.do?action=Product&name=${category.name}' />"><c:out
											value="${category.name}" /></a></li>
							</c:forEach>
						</ul></li>
					<li><a href="#">О нас</a></li>
				</ul>

				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#">Аккаунт <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<c:choose>
								<c:when test="${sessionScope.customer != null}">
									<li><a href="<c:url value='home.do?action=Account' />">Мой аккаунт</a></li>
											<li><a href="<c:url value='home.do?action=OrderHistory' />">История заказов</a></li>
									<li><a href="<c:url value='home.do?action=Signin&op=logout' />">Выйти</a></li>
								</c:when>
								<c:otherwise>
									<li><a href="<c:url value='home.do?action=Register' />">Регистрация</a></li>
									<li><a href="<c:url value='home.do?action=Signin' />">Войти</a></li>
								</c:otherwise>
							</c:choose>
						</ul></li>
					<li><a href="<c:url value='home.do?action=Cart' />"> <span
							class="glyphicon glyphicon-shopping-cart fa-lg"></span><span>${cart.size}</span></a>
					</li>
				</ul>
			</div>

		</div>
	</nav>
</div>