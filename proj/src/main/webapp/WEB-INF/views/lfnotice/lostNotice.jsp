<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">

            <!-- Mobile Metas -->
            <meta name="viewport" content="width=device-width, initial-scale=1">

            <!-- Site Metas -->
            <title>Freshshop - Ecommerce Bootstrap 4 HTML Template</title>
            <meta name="keywords" content="">
            <meta name="description" content="">
            <meta name="author" content="">

            <!-- Site Icons -->
            <link rel="shortcut icon" href="lnf/images/favicon.ico" type="image/x-icon">
            <link rel="apple-touch-icon" href="lnf/images/apple-touch-icon.png">

            <!-- Bootstrap CSS -->
            <link rel="stylesheet" href="lnf/css/bootstrap.min.css">
            <!-- Site CSS -->
            <link rel="stylesheet" href="lnf/css/style.css">
            <!-- Responsive CSS -->
            <link rel="stylesheet" href="lnf/css/responsive.css">
            <!-- Custom CSS -->
            <link rel="stylesheet" href="lnf/css/custom.css">

            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
            
            <!-- 검색옆에 설정 -->
	         <meta name="viewport" content="width=device-width, initial-scale=1">
			 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
			 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
			 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
			 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

			
			<style type="text/css">
				body{
				    text-align:center;
					}
					#paging{
					font-size: 22pt;
					}
			</style>
			<script type="text/javascript">
		function CallNotice(n){
			frm.lfnnid.value=n;
			frm.submit();
		}
	
	</script>
        </head>

        <body>





            <!-- Start Shop Page  -->
            <div class="shop-box-inner">
	            	<div style="margin-left: 20%">
	                	<h3>분실물</h3>
	                </div>
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12 col-lg-12 col-sm-12 col-xs-12 shop-content-right">
                            <div class="right-product-box">
                                <div class="product-item-filter row">
                                    <div style="border-right-style: double;" class="col-12 col-sm-6 text-center text-sm-left">
                                        <div class="lostSeach">
                                            <div class="container mt-3">
                                                <div>
                                                    <table border="1">
                                                        <form>
                                                            <span>
                                                                <div class="toolbar-sorter-right" >
                                                                    <span style="font-weight: 900;">지역구별</span>
                                                                    <select name="lostlocation"
                                                                        class="show-tick form-control btn-light">
                                                                        <option selected>분실지역구</option>
                                                                        <option value="수성구">수성구</option>
                                                                        <option value="서구">서구</option>
                                                                        <option value="중구">중구</option>
                                                                        <option value="달서구">달서구</option>
                                                                        <option value="남구">남구</option>
                                                                        <option value="달성군">달성군</option>
                                                                    </select>
                                                                </div>
                                                                <div class="toolbar-sorter-right">
                                                                    <span style="font-weight: 900;">물품종류</span>
                                                                    <select name="objtype"
                                                                        class="show-tick form-control btn-light">
                                                                        <option selected>물품종류</option>
                                                                        <option value="스마트폰">스마트폰</option>
                                                                        <option value="전자기기">전자기기</option>
                                                                        <option value="지갑">지갑</option>
                                                                        <option value="의류">의류</option>
                                                                        <option value="기타">기타</option>
                                                                    </select>
                                                                    <div style="font-weight: 900;">날짜<div>
                                                                            <div style="display: flex" ;>
                                                                                <input type="date" name="startydm"
                                                                                    id="startydm"
                                                                                    class="show-tick btn-light"
                                                                                    title="검색 시작일">
                                                                                ~
                                                                                <input type="date" name="endydm"
                                                                                    id="endydm"
                                                                                    class="show-tick btn-light"
                                                                                    title="검색 종료일">
                                                                            </div>
                                                                            <div class="button-group filter-button-group"
                                                                                    style="text-align: center; margin-top: 10px">
                                                                                    <button class="btn hvr-hover"
                                                                                        type="submit">검색</button>
                                                                                </div>
                                                                        </div>
                                                            </span>
                                                             

                                                        </form>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="search-product">

                                    </div>
                                    <div class="col-12 col-sm-6 text-center text-sm-right">
                                        <ul class="nav nav-tabs ml-auto">
                                            <li>
                                                <a class="nav-link active" href="#grid-view" data-toggle="tab"> <i
                                                        class="fa fa-th"></i> </a>
                                            </li>
                                            <li>
                                                <a class="nav-link" href="#list-view" data-toggle="tab"> <i
                                                        class="fa fa-list-ul"></i> </a>
                                            </li>
                                        </ul>
                                       <form>
											<div class="toolbar-sorter-right" style="display: flex; width: 90%">
												<div  style="margin-top: 30%; display: flex;">
													<select style="width:50%" name="lostlocation" class="show-tick form-control btn-light">
														<option selected>아이디</option>
														<option value="수성구">타이틀</option>
													</select>
													<input name="lostsearch" id="lostsearch" type="text">
													<button class="btn hvr-hover" type="submit">검색</button>
												</div>
											</div>
										</form>													
									</div>
                                </div>
                                <div class="product-categorie-box">
                                    <div class="tab-content">
                                        <div role="tabpanel" class="tab-pane fade show active" id="grid-view">
                                            <div class="row">
                                                <c:forEach items="${lostNotice}" var="lostNotices">
                                                    <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4" onclick="CallNotice(${lostNotices.lFnid})">
                                                        <div class="products-single fix">
                                                            <div class="box-img-hover">
                                                                <div class="type-lb">
                                                                    <p class="sale">${lostNotices.lFnStatus}</p>
                                                                </div>
                                                                <img src="${lostNotices.lFnImg}" class="img-fluid"
                                                                    alt="Image">
                                                                <div class="mask-icon">
                                                                    <ul>
                                                                        <li><a href="#" data-toggle="tooltip"
                                                                                data-placement="right" title="View"><i
                                                                                    class="fas fa-eye"></i></a></li>
                                                                        <li><a href="#" data-toggle="tooltip"
                                                                                data-placement="right"
                                                                                title="Compare"><i
                                                                                    class="fas fa-sync-alt"></i></a>
                                                                        </li>
                                                                        <li><a href="#" data-toggle="tooltip"
                                                                                data-placement="right"
                                                                                title="Add to Wishlist"><i
                                                                                    class="far fa-heart"></i></a></li>
                                                                    </ul>
                                                                    <a class="cart" href="#">Add to Cart</a>
                                                                </div>
                                                            </div>
                                                            <div class="why-text">
                                                                <h4>${lostNotices.lFnDate}</h4>
                                                                <h4>${lostNotices.lFnAddress}</h4>
                                                                <h4>${lostNotices.lFnObj}</h4>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </c:forEach>
                                            </div>
                                        </div>
                                        <div role="tabpanel" class="tab-pane fade" id="list-view">
                                            <c:forEach items="${lostNotice}" var="lostNotices">
                                                <div class="list-view-box">
                                                    <div class="row">
                                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4" onclick="CallNotice(${lostNotices.lFnid})">
                                                            <div class="products-single fix">
                                                                <div class="box-img-hover">
                                                                    <div class="type-lb">
                                                                        <p class="new">${lostNotices.lFnStatus}</p>
                                                                    </div>
                                                                    <img src="${lostNotices.lFnImg}" class="img-fluid"
                                                                        alt="Image">
                                                                    <div class="mask-icon">
                                                                        <ul>
                                                                            <li><a href="#" data-toggle="tooltip"
                                                                                    data-placement="right"
                                                                                    title="View"><i
                                                                                        class="fas fa-eye"></i></a></li>
                                                                            <li><a href="#" data-toggle="tooltip"
                                                                                    data-placement="right"
                                                                                    title="Compare"><i
                                                                                        class="fas fa-sync-alt"></i></a>
                                                                            </li>
                                                                            <li><a href="#" data-toggle="tooltip"
                                                                                    data-placement="right"
                                                                                    title="Add to Wishlist"><i
                                                                                        class="far fa-heart"></i></a>
                                                                            </li>
                                                                        </ul>

                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-6 col-md-6 col-lg-8 col-xl-8">
                                                            <div class="why-text full-width">
                                                                <h3>제목: ${lostNotices.lFnTitle}</h3>
                                                                <h5>주소: ${lostNotices.lFnAddress}</h5>
                                                                <h6>내용 ${lostNotices.lFncontent}</h6>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:forEach>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-3 col-sm-12 col-xs-12 sidebar-shop-left">
                            <div class="product-categori">

                                
                            </div>
                        </div>
                    </div>
                    
                    <!-- End Shop Page -->
                    <div style="margin-bottom: 5%" class="filter-button-group">
		                 <button class="btn hvr-hover" type="submit" onclick="location.href='lNForm.do'">글쓰기</button>
		                 <button class="btn hvr-hover" type="submit" >삭제</button>
                	</div>
                    <!-- Start Instagram Feed  -->
                    <div class="instagram-box">
                        <div class="main-instagram owl-carousel owl-theme">
                            <div class="item">
                                <div class="ins-inner-box">
                                    <img src="images/instagram-img-01.jpg" alt="" />
                                    <div class="hov-in">
                                        <a href="#"><i class="fab fa-instagram"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="ins-inner-box">
                                    <img src="images/instagram-img-02.jpg" alt="" />
                                    <div class="hov-in">
                                        <a href="#"><i class="fab fa-instagram"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="ins-inner-box">
                                    <img src="images/instagram-img-03.jpg" alt="" />
                                    <div class="hov-in">
                                        <a href="#"><i class="fab fa-instagram"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="ins-inner-box">
                                    <img src="images/instagram-img-04.jpg" alt="" />
                                    <div class="hov-in">
                                        <a href="#"><i class="fab fa-instagram"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="ins-inner-box">
                                    <img src="images/instagram-img-05.jpg" alt="" />
                                    <div class="hov-in">
                                        <a href="#"><i class="fab fa-instagram"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="ins-inner-box">
                                    <img src="images/instagram-img-06.jpg" alt="" />
                                    <div class="hov-in">
                                        <a href="#"><i class="fab fa-instagram"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="ins-inner-box">
                                    <img src="images/instagram-img-07.jpg" alt="" />
                                    <div class="hov-in">
                                        <a href="#"><i class="fab fa-instagram"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="ins-inner-box">
                                    <img src="images/instagram-img-08.jpg" alt="" />
                                    <div class="hov-in">
                                        <a href="#"><i class="fab fa-instagram"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="ins-inner-box">
                                    <img src="images/instagram-img-09.jpg" alt="" />
                                    <div class="hov-in">
                                        <a href="#"><i class="fab fa-instagram"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="ins-inner-box">
                                    <img src="images/instagram-img-05.jpg" alt="" />
                                    <div class="hov-in">
                                        <a href="#"><i class="fab fa-instagram"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End Instagram Feed  -->


                    <!-- Start Footer  -->
                    <footer>
                        <div class="footer-main">
                            <div class="container">
                                <div class="row">
                                    <div class="col-lg-4 col-md-12 col-sm-12">
                                        <div class="footer-top-box">
                                            <h3>Business Time</h3>
                                            <ul class="list-time">
                                                <li>Monday - Friday: 08.00am to 05.00pm</li>
                                                <li>Saturday: 10.00am to 08.00pm</li>
                                                <li>Sunday: <span>Closed</span></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-12 col-sm-12">
                                        <div class="footer-top-box">
                                            <h3>Newsletter</h3>
                                            <form class="newsletter-box">
                                                <div class="form-group">
                                                    <input class="" type="email" name="Email"
                                                        placeholder="Email Address*" />
                                                    <i class="fa fa-envelope"></i>
                                                </div>
                                                <button class="btn hvr-hover" type="submit">Submit</button>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-12 col-sm-12">
                                        <div class="footer-top-box">
                                            <h3>Social Media</h3>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                            <ul>
                                                <li><a href="#"><i class="fab fa-facebook" aria-hidden="true"></i></a>
                                                </li>
                                                <li><a href="#"><i class="fab fa-twitter" aria-hidden="true"></i></a>
                                                </li>
                                                <li><a href="#"><i class="fab fa-linkedin" aria-hidden="true"></i></a>
                                                </li>
                                                <li><a href="#"><i class="fab fa-google-plus"
                                                            aria-hidden="true"></i></a></li>
                                                <li><a href="#"><i class="fa fa-rss" aria-hidden="true"></i></a></li>
                                                <li><a href="#"><i class="fab fa-pinterest-p"
                                                            aria-hidden="true"></i></a></li>
                                                <li><a href="#"><i class="fab fa-whatsapp" aria-hidden="true"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-lg-4 col-md-12 col-sm-12">
                                        <div class="footer-widget">
                                            <h4>About Freshshop</h4>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
                                                tempor
                                                incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                                                quis
                                                nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                                                consequat.
                                            </p>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
                                                tempor
                                                incididunt ut labore et dolore magna aliqua. </p>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-12 col-sm-12">
                                        <div class="footer-link">
                                            <h4>Information</h4>
                                            <ul>
                                                <li><a href="#">About Us</a></li>
                                                <li><a href="#">Customer Service</a></li>
                                                <li><a href="#">Our Sitemap</a></li>
                                                <li><a href="#">Terms &amp; Conditions</a></li>
                                                <li><a href="#">Privacy Policy</a></li>
                                                <li><a href="#">Delivery Information</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-12 col-sm-12">
                                        <div class="footer-link-contact">
                                            <h4>Contact Us</h4>
                                            <ul>
                                                <li>
                                                    <p><i class="fas fa-map-marker-alt"></i>Address: Michael I. Days
                                                        3756
                                                        <br>Preston Street Wichita,<br> KS 67213
                                                    </p>
                                                </li>
                                                <li>
                                                    <p><i class="fas fa-phone-square"></i>Phone: <a
                                                            href="tel:+1-888705770">+1-888 705 770</a></p>
                                                </li>
                                                <li>
                                                    <p><i class="fas fa-envelope"></i>Email: <a
                                                            href="mailto:contactinfo@gmail.com">contactinfo@gmail.com</a>
                                                    </p>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <form id="frm" action="lostNoticeSelect.do" method="post">
		           			             <input type="hidden" id="lfnnid" name="lfnid">
           		           			</form>
                                    <!-- ALL PLUGINS -->
                                    <script src="lnf/js/jquery.superslides.min.js"></script>
                                    <script src="lnf/js/bootstrap-select.js"></script>
                                    <script src="lnf/js/inewsticker.js"></script>
                                    <script src="lnf/js/bootsnav.js"></script>
                                    <script src="lnf/js/images-loded.min.js"></script>
                                    <script src="lnf/js/isotope.min.js"></script>
                                    <script src="lnf/js/owl.carousel.min.js"></script>
                                    <script src="lnf/js/baguetteBox.min.js"></script>
                                    <script src="lnf/js/jquery-ui.js"></script>
                                    <script src="lnf/js/jquery.nicescroll.min.js"></script>
                                </div>
                            </div>
                        </div>
                    </footer>
                    <!-- End Footer  -->


                    <!-- ALL JS FILES -->
                    <script src="lnf/js/jquery-3.2.1.min.js"></script>
                    <!-- <script src="lnf/js/lnfpopper.min.js"></script> -->
                    <script src="lnf/js/bootstrap.min.js"></script>
                    <script src="lnf/js/lnfpopper.min.js"></script>
                    <script src="lnf/js/form-validator.min.js"></script>
                    <script src="lnf/js/contact-form-script.js"></script>
                    <script src="lnf/js/custom.js"></script>
                    
                 
                    
        </body>
        </html>