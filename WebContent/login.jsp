<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Spectral by HTML5 UP
	html5up.net | @n33co
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Contribute Blog</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/js/login.css" />
    <script src="assets/js/login.js"></script>

	</head>
	<body>

	
	    <div class="container">
	      <div class="row">
	          <div class="col-md-12">
	              <div class="pr-wrap">
	                  <div class="pass-reset">
	                      <label>
	                          Enter the email you signed up with</label>
	                      <input type="email" placeholder="Email" />
	                      <input type="submit" value="Submit" class="pass-reset-submit btn btn-success btn-sm" />
	                  </div>
	              </div>
	              <div class="wrap">
	                  <p class="form-title">
	                      Sign In</p>
	                  <form action="ServletAutenticacao" method="post">
	                  <input type="text" placeholder="Email" value="${utilizador.email}" />
	                  <input type="password" placeholder="Senha" value="${utilizador.senha}"/>
	                  <input type="submit" value="Sign In" class="btn btn-success btn-sm" />
	                  <div class="remember-forgot">
	                      <div class="row">
	                          <div class="col-md-6">
	                              <div class="checkbox">
	                                  <label>
	                                      <input type="checkbox" />
	                                      Remember Me
	                                  </label>
	                              </div>
	                          </div>
	                          <div class="col-md-6 forgot-pass-content">
	                              <a href="javascription:void(0)" class="forgot-pass">Forgot Password</a>
	                          </div>
	                      </div>
	                  </div>
	                  </form>
	              </div>
	          </div>
	      </div>
	    </div>
	</form>


		<!-- Scripts -->


	</body>
</html>
