<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" type="text/css" href="../pub/css/styles.css" />

<link rel="stylesheet" href="https://allyoucan.cloud/cdn/icofont/1.0.1/icofont.css" integrity="sha384-jbCTJB16Q17718YM9U22iJkhuGbS0Gd2LjaWb4YJEZToOPmnKDjySVa323U+W7Fv" crossorigin="anonymous">
<script src="/pub/js/script.js"></script>

<jsp:include page="../include/header.jsp" />


    <div class="container">



<c:forEach  var = "variety" items= "${varieties}">
<section class="section about-section gray-bg" id="about">
   <div class="row align-items-center justify-content-around flex-row-reverse">
            <div class="col-lg-6">
                <div class="about-text">
                    <h3 class="dark-color">${variety.name}</h3>
                    <h4 class="theme-dark">${variety.description}</h4>
                    <p>$${variety.price} / ${variety.units}</p>
                    <div class="btn-bar">
                            <button type="button" onClick = "increment(${variety.id})" class="btn btn-success">  +  </button>
                            <button type="button" onClick = "decrement(${variety.id})"class="btn btn-danger">  -  </button>
                        <input type="number" id ="quantity${variety.id}" value ="1" min="1"  class="form-control" style=" width: 30%;"
                         aria-label="Dollar amount (with dot and two decimal places)">
                        <button type="button" class="btn btn-light">Add to cart</button>
                    </div>
                </div>
            </div>

            <div class="col-lg-5 text-center">
                <div class="about-img">
                    <img src="${variety.image}">
                </div>
            </div>
   </div>
   </section>
        </c:forEach>
          </div>






<jsp:include page="../include/footer.jsp" />