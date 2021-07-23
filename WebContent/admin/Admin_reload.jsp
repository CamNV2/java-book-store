<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
	     <%@ include file="css/htmlAD.css"%>
</style>
<style>
	     <%@ include file="css/Button.css"%>
</style>
</head>
<body>

    <section>

        <div class="section1">
            <img src="https://s3-media1.fl.yelpcdn.com/bphoto/J0s68fr21su0tvlPQm5BAw/ls.jpg" class="logo" />
            <div class="navigation">
                <img src="https://www.pngkey.com/png/detail/213-2139865_list-summary-options-preferences-app-ui-menu-comments.png" class="toggle" />
                <a class="cgr">Categories</a>

            </div>
            <div>
                <a class="sbmenu" >Sound devices</a>
                <a class="sbmenu">video game consoles</a>
                <a class="sbmenu">cell/mobile/wriless phones</a>
                <a class="sbmenu">Home security system</a>
                <a class="sbmenu">TVs</a>
                <a class="sbmenu">computers</a>
                <a class="sbmenu">Games/Movies/Music</a>
                <a class="sbmenu">Accessories</a>
                <a class="sbmenu">Office</a>
                <a class="sbmenu">Home appliances</a>
            </div>

            <p class="para1">Special</p>
            <div class="special">
                <fieldset>
                    <legend>Sale</legend>
                    <div class="div1">
                        <img src="https://media-ak.static-adayroi.com/400_400/80/images/hec/hd0/15002567835678.jpg" class="img1" />
                    </div>
                    <div class="div2">
                        <h3>$26.34<strike> $29.78</strike></h3>
                        <p>
                            <h6>Kill viruses from downloaded files on the internet right away</h6>
                        </p>
                    </div>
                </fieldset>
            </div>

            <div class="special">
                <fieldset>
                    <legend>Sale</legend>
                    <div class="div1">
                        <img src="http://data.kenhsinhvien.net/files/2013/12/03/KenhSinhVien-tu-tuong-hcm.jpg" class="img1" />
                    </div>
                    <div class="div2">
                        <h3>$free<strike> $2.2</strike></h3>
                        <p>
                            <h6>Revolutionary ways and truths are presented in this book</h6>
                        </p>
                    </div>
                </fieldset>
            </div>

            <div class="special">
                <fieldset>
                    <legend>Sale</legend>
                    <div class="div1">
                        <img src="https://phongnet.com/wp-content/uploads/2016/09/ghe-choi-game-771x1024.jpg" class="img1" />
                    </div>
                    <div class="div2">
                        <h3>$350.00<strike> $370.23</strike></h3>
                        <p>
                            <h6>Model Eblue Cobra EEC303 has appeared in Vietnam a long time ago</h6>
                        </p>
                    </div>
                </fieldset>
            </div>

            <div class="special">
                <fieldset>
                    <legend>Sale</legend>
                    <div class="div1">
                        <img src="https://philong.com.vn/media/product/6575-chuot-games-thu-e-blue-auroza-type-g-ems607bkaa-iu-2.jpg" class="img1" />
                    </div>
                    <div class="div2">
                        <h3>$250.00<strike> $270.23</strike></h3>
                        <p>
                            <h6>Model Eblue Cobra EEC303 has appeared in Vietnam a long time ago</h6>
                        </p>
                    </div>
                </fieldset>
            </div>

            <div class="special">
                <fieldset>
                    <legend>Sale</legend>
                    <div class="div1">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-xzEcVNAXRTbgAHvqGAFVPa4OhG6Wpoi3YDaew1LIyCPnJGGp" class="img1" />
                    </div>
                    <div class="div2">
                        <h3>$123.50<strike> $200.23</strike></h3>
                        <p>
                            <h6>Cherry MX Speed, Brown | Size: Full size</h6>
                        </p>
                    </div>
                </fieldset>
            </div>

        </div>

        <!--section2-->

        <div class="section2">
         
              <div class="login">
                <a href="/BookStore/Reload" id="button" class="button1">Logout</a>
                 <a href="/BookStore/Admin" id="button" class="button1" >Admin</a>
                  <div class="bg-modal">
                     <div class="modal-contents">

                         <div class="close">+</div>
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKWp4614E-Xkf_wTCZAGxmfWHzKpfC5DrDI5LZ-jwGh8BgsLK9" class="loginn">
                            <form action="/BookStore/LOGIN" method="get">
                            <input type="text" placeholder="Name" name="username">
                            <input type="password" placeholder="Password" name="password">
                         	<input type="submit" value="Login">
   					       
   					       </form>
                     </div>
                  </div>
              </div>
      
            <!-- Login -->
            <input type="text" placeholder="seach" class="txt" />
            <button type="button" id="bt" class="bt1">Seach</button>
            
            
            
            <!-- <img src="https://vieroisopa.tk/photo/491383.jpg" class="call-icon" /> -->
            

            <nav>
                <a class="menuitem" >Home</a>
                <a class="menuitem">Wish List(0)</a>
                <a class="menuitem">My Account</a>
                <a class="menuitem">Shopping</a>
                <a class="menuitem">Checkout</a>
                <a class="menuitem" >Items</a>
               
            </nav>
            <div class="slider">
                <div class="slides">
                    <div class="slide1">
                        <img src="https://png.pngtree.com/element_our/png_detail/20180914/iphone-xs-max-gray-mockup-phototype-png_101228.jpg" class="img1" />
                    </div>
                    <div class="slide1">
                        <img src="anh/ip1.jpg" class="img2" />
                    </div>
                    <div class="slide1">
                        <img src="anh/ip1.png" class="img3" />
                    </div>
                    <div class="constat">
                        <h1>iphoneXs</h1>
                        <p>Comfort is a very comfortant things nowadays because it is a condition of satifaction.</p>
                        <a class="btnshopnow">Shop now!</a>
                    </div>
                </div>
            </div>
            
            <div class="content1">
            
                <div class="innertitle1">
                    <h3>G21 Panther </h3>
                    <P class="para1">Like using a real mechanical keyboard.</P>

                    <p  class="para1" > <a href="#" id="btt" class="btt1">Shop Now!</a></p>
                </div>
                <div class="innertile2">
                    <h3>Sennheiser HD 599</h3>
                    <p class="para1">Like to enter an audiophile sound world.</p>

                    <p class="para1" ><a href="#" id="btt" class="btt1">Shop Now!</a></p>
                </div>
                <div class="inner1">
                    <img src="https://media3.scdn.vn/img2/2018/5_26/combo-phim-chuot-game-thu-g21-panther-led-7-mau-thiet-ke-an-tuong-1m4G3-W6rWhw_simg_d0daf0_800x1200_max.jpg" class="img1" />

                </div>
                <div class="inner2">
                    <img src="http://hochoimoingay.com/images/thumbs/2016/03/anh-gioi-thieu-tai-nghe-final-sonorous-x-46259.jpg" class="img2" />
                </div>
            </div>
            <p class="featuredpara"><b>Latest</b></p>

            <div class="product">
             <c:forEach items="${listbook}" var="book">
                <fieldset class="col1">
                
                    <legend>New</legend>
                    <img  src="data:image/jpg;base64,${book.base64Image}" class="img11" /> 
                    
                    <h4><c:out value="${book.title}"></c:out></h4>
                    <p>
                        <h6><c:out value="${book.detail}"></c:out></h6>
                        <h3>$<c:out value="${book.price}"></c:out><strike>$1921.45 </strike></h3>
                
                    </p>
                    <a href="#" id="btt" class="btt1">Buy Now</a>
                  </fieldset>
                </c:forEach>
            </div>

            <p class="featuredpara"><b>Featured</b></p>

            <div class="product">
                <fieldset class="col1">
                    <legend>IPhone 6s Plus+</legend>
                    <img src="https://www.xtmobile.vn/vnt_upload/product/07_2017/thumbs/600_B_ok_min_41.jpg " class="img1" />
                    <h3>$400.99<strike>$470.34</strike></h3>
                    <h4>Phone 6s has the same design from the previous version, and has been upgraded </h4>
                    <p>
                        <h6>iPhone 6s is equipped with a new 64-bit Apple A9 processor integrated with the motion
                            processor M9</h6>
                    </p>
                </fieldset>

                <fieldset class="col2">
                    <legend>IPhone 8 Plus+</legend>
                    <img src="https://cellphones.com.vn/media/catalog/product/cache/7/thumbnail/9df78eab33525d08d6e5fb8d27136e95/8/-/8-plus-1_4.png" class="img1" />
                    <h3>$600.97<strike>$702.93</strike></h3>
                    <h4>The powerful A11 Bionic chip. And wireless charging.</h4>
                    <p>
                        <h6>iPhone 8 features a durable glass design. More advanced cameras. </h6>
                    </p>
                </fieldset>

                <fieldset class="col3">
                    <legend>Hot Deal</legend>
                    <img src="http://suachuamobile.vn/wp-content/uploads/2019/03/sua-iphone-xs-1.jpg" class="img1" />
                    <h3>$800.93<strike>$850.97</strike></h3>
                    <h4>Fastest performance. Studio-quality photos.</h4>
                    <p>
                        <h6>iPhone XR features an all-screen design. Longest battery life ever in an iPhone. </h6>
                    </p>

                </fieldset>
            </div>

           <!--  <p class="featuredpara"><b>Accessories</b></p>

            <div class="product">
                <fieldset class="col1">
                    <legend>VITRA HERA S07</legend>
                    <img src="anh/case.jpg " class="imgs" />
                    <h3>$4370.99<strike>$4705.34</strike></h3>
                    <h4>Support Mainboard mini-ITX, M-ATX and ATX. </h4>
                    <p>
                        <h6>Air outlet design, Rubber anti-vibration</h6>
                    </p>
                </fieldset>

                <fieldset class="col2">
                    <legend>Sony SRS-XB31</legend>
                    <img src="anh/Loa.jpg" class="img2" />
                    <h3>$670.97<strike>$702.93</strike></h3>
                    <h4>Unique sound effects and lights with Party Booster mode</h4>
                    <p>
                        <h6>Sound mode: EXTRA BASS ON / OFF, Clear Audio +, DSEE, Standard</h6>
                    </p>
                </fieldset>

                <fieldset class="col3">
                    <legend>Smart 4K UHD LED</legend>
                    <img src="anh/tv.jpg" class="img3" />
                    <h3>$87300.93<strike>$89000.97</strike></h3>
                    <h4>Sony 85 inch KD-85X9000F model 2018 - KD-85X9000F</h4>
                    <p>
                        <h6>Triluminos color-forming technology gives true images.Clear Audio+sound technology is vivid
                            and clear.</h6>
                    </p>
                </fieldset>
            </div> -->
   
</div>
    </section>
    <div class="background"></div>

    <div class="footer">

        <div class="outer">
            <div class="inner">
                <h4>Information</h4>
                <a>About</a>
                <a>Delivery Information</a>
                <a>Privacy Policy</a>
                <a>Tearm & Condition</a>
            </div>
            <div class="inner2">
                <h4>Costomer Information</h4>
                <a>Contact US</a>
                <a>Return</a>
                <a>Site Map</a>
            </div>
            <div class="inner">
                <h4>My Account</h4>
                <a>Orther History</a>
                <a>Wish List</a>
                <a>News Latter</a>
            </div>
            <div class="inner2">
                <h4>Follow Us</h4>
                <a>facebook</a>
                <a>Twitter</a>
                <a>Google +</a>
                <a>Youtube</a>
            </div>
        </div>

        <hr />
        <div class="Copyright">
            <span>
                <h4>&copy;VanCam<i>(グエン•バン•カム)</i></h4>
            </span>
        </div>
    </div>
    <script>
        var $slides = $('.slides');
        var $slide = $('.slide1');
        var count = 1;

        $(document).ready(function () {

            setInterval(function () {

                $slides.animate({ 'margin-left': '-=68vw' }, 1200, function () {

                    count++;
                    if (count === 4) {
                        $slides.css("margin-left", 0);
                        count = 1;
                    }
                });
            }, 4000);
        });
    </script>
 <!--    <script>
        document.querySelector('.button1').addEventListener("click", function () {
            document.querySelector('.bg-modal').style.display = "flex";
        });

        document.querySelector('.close').addEventListener("click", function () {
            document.querySelector('.bg-modal').style.display = "none";
        })

    </script> -->
</body>
</html>