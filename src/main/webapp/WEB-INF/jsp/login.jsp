<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="row">
	<jsp:include page="fragments/page_header.jsp">
		<jsp:param name="name" value="ВХОД" />
	</jsp:include>
	<div class="row push_down">
		<div class="col-sm-8 col-sm-offset-2">
			<c:if test="${message != null}">
				<div class="alert alert-danger" role="alert">
					<p>${message}</p>
				</div>
			</c:if>
			<form id="frmLogin" method="POST"
				action="<c:url value='home.do?action=Signin' />">
				<div class="form-group">
					<label>Адрес почты</label> <input type="email" name="email"
						class="form-control" placeholder="Введите адрес">
				</div>
				<div class="form-group">
					<label>Пароль</label> <input type="password" name="password"
						class="form-control" placeholder="Введите пароль>
				</div>
				<br />
				<div class="form-group">
					<input type="submit" class="btn btn-primary" value="Войти" /> <a
						href="#" class="forgot-password"
						style="text-decoration: underline; color: #888;">Забыли пароль?</a> <a href="<c:url value='home.do?action=Register' />"
						style="float: right; color: #888;">Регистрация</a>
				</div>
				<div class="form-group">
					<input type="checkbox" class="form-check-input" value=""
						name="remember"> <label class="form-check-label"
						for="remember">Запомнить меня</label>
				</div>
			</form>
		</div>
	</div>
</div>
