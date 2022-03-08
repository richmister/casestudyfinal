
<jsp:include page="../include/header.jsp" />
<link rel="stylesheet" type="text/css" href="../pub/css/styles.css" />

<form action="/login/loginSecurityPost" method = "POST" style="    margin-top: -6%;">
   <div class="row mb-3" style="    margin-left: 3%;">
    <label for="inputEmail3" class="col-sm-2 col-form-label">Email</label>
    <div class="col-sm-4">
     Email : <input type="text" name = "username" class="form-control" id="inputEmail3">
    </div>
  </div>
  <div class="row mb-3" style="    margin-left: 3%;">
    <label for="inputPassword3" class="col-sm-2 col-form-label">Password</label>
    <div class="col-sm-4">
      <input type="password" name ="password" class="form-control" id="inputPassword3">
    </div>
  </div>

  <button type="submit" class="btn btn-primary" style="    margin-left: 30%;">Sign in</button>

  <h3 style="    margin-left: 3%;">Haven't signed up yet?  Register below.</h3>
</form>

</b>

<form action="/login/registerSubmit" method = "POST" style="    margin-top: -6%;">
  <input type="hidden" name="id" value="${formBeanKey.id}">
<section class="vh-100" style="background-color: #eee;">
  <div class="container h-100">
    <div class="row d-flex justify-content-center align-items-center h-100" style = "margin-top: 6%;">
      <div class="col-lg-12 col-xl-11" style="    margin-bottom: -20%; margin-top: -26%;">
        <div class="card text-black" style="border-radius: 25px;">
          <div class="card-body p-md-5" style=" height: 36em;">
            <div class="row justify-content-center">
              <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

                <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Sign up</p>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      <input type=input type="text" name="firstName" value="${formBeanKey.firstName}"/>
                      <label class="form-label" for="form3Example1c">First Name</label>
                    </div>
                  </div>
     <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      <input type="text" name="lastName" value="${formBeanKey.lastName}" />
                      <label class="form-label" for="form3Example1c">Last Name</label>
                    </div>
                  </div>


                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      <input type="text" name="email" value="${formBeanKey.email}" />
                      <label class="form-label" for="form3Example3c">Your Email</label>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      <input type="password" name="password" value="${formBeanKey.password}" />
                      <label class="form-label" for="form3Example4c">Password</label>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      <input type="password" name="confirmPassword" value="${formBeanKey.confirmPassword}" />
                      <label class="form-label" for="form3Example4cd">Confirm password</label>
                    </div>
                  </div>



                  <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                    <button type="submit" class="btn btn-primary btn-lg">Register</button>
                  </div>

                </form>



              </div>
              <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

                <img src="/pub/images/organic-food.jpg" class="img-fluid" alt="Sample image">

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<jsp:include page="../include/footer.jsp" />