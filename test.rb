#whole-header {
  border-top: 1px solid black;
  background-image: url(http://oneseapullzone.oneseabody.netdna-cdn.com/wp-content/uploads/2016/02/Exercise.jpg);
}

#middle {
  border-top: 1px solid black;
  height: 100px;
  background-color: white;
  width: 100%;
}

.parallax {
  perspective: 1px;
  height: 100vh;
  perspective-origin-x: 100%;
  overflow-x: hidden;
  overflow-y: auto;
}
.parallax__layer {
  position: absolute;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
}
.parallax__layer--base {
  transform: translateZ(0);
}
.parallax__layer--back {
   transform: translateZ(-1px) scale(2);
}

#yogastudioinfo {
  position: fixed;
}

#commentssection {
  max-height: 200px;
  margin-top: 30px;
}

#commentbox {
  border: 1px solid black;
  padding: 10px;
  background-color: white;
  opacity: 0.7;
  width: 100%;
}
.comment-box-text-align{
  margin-left: auto;
}

#studiodetailinfo {
  margin-top: 45px;
  vertical-align: top;
}

#loginbackground {
  background-image: url(http://kameronbrothers.com/wp-content/uploads/2016/02/sunset-beach-yoga.jpg);
}

#loginbackground2 {
background-image: url(http://yogaposeweekly.letsglo.com/wp-content/uploads/2013/05/IMG_8047.jpg);
background-attachment: fixed;
background-size: 100% 100%;
}

#studioimages {
  width: 400px;
  text-align: center;
  margin: 20px;
  border: 1px solid black;
}

#navbar {
  padding: 0px;
  margin: 0px;
  position: fixed;
  top: 0;
  width: 100%;
  z-index: 100;
}

#welcome {
  margin-bottom: 10px;
}

#services {
  border-bottom: 1px solid black;
}

#studioname {
  font-weight: bold;
}

#yogaheader {
  font-size: 2em;
  padding: 10px;
  font-weight: bold;
}

#likes {
  margin-top: 60px;
}

.headers {
  font-size: 2em;
  padding: 10px;
  font-weight: bold;
}

#about {
  padding-top: 50px;
  padding-bottom: 50px;
  background-color: #E5D4C0;
  border-top: 1px solid black;
  border-bottom: 1px solid black;
  color: black;
}

#addyourstudio {
  margin-top: 70px;
  margin-left: 30px;
}

.container-fluid {
  background-color: white;
  border-bottom: 1px solid black;
}

.text-faded {
  color: black;
}

#text-faded-desc {
  color: black;
}

#login {
  position: fixed;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}

#logintext {
  padding: 20px;
  font-weight: bold;
}

#like {
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}

#signupshit {
  margin-top: 100px;
}

#signup {
  position: fixed;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  border: 1px solid black;
  padding: 20px;
  background-color: #F3E9DE;
  opacity: 0.7;
}

#signupbutton {
  text-align: center;
}


.header-content-inner {
  padding: 30px;
}

#section-heading-info {
  padding-top: 30px;
}

#button1 {
    border-color: #fff;
    color: #222;
    background-color: #fff;
    -webkit-transition: all .35s;
    -moz-transition: all .35s;
    transition: all .35s;
}

#button1:hover {
   background-color: silver;
 }

#contact {
    background-color: #E5D4C0;
}


#services {
  padding-top: 50px;
  padding-bottom: 50px;
}

.service-box-hover:hover {
   background: #F1DAE2;
   border-radius: 10px;
   transition: 1s;
}
