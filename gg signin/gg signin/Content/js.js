var id, name, image, mail;
var app = angular.module('gg', []);

function onSignIn(googleUser) {
    //console.clear();
    var profile = googleUser.getBasicProfile();
    id = profile.getId();
    name = profile.getName();
    image = profile.getImageUrl();
    mail = profile.getEmail();
    console.log('ID: ' + id); // Do not send to your backend! Use an ID token instead.
    console.log('Name: ' + name);
    console.log('Image URL: ' + name);
    console.log('Email: ' + mail); // This is null if the 'email' scope is not present.
    var idToken = googleUser.getAuthResponse().id_token;
    //angular.element(document.getElementById('google')).scope().senddata(id,mail);//gọi hàm send data truyền vào dữ liệu
    //chèn xong dữ liệu thì đăng xuất 
    var auth2 = gapi.auth2.getAuthInstance();
    auth2.signOut()
  //  window.location = "https://localhost:44333/Default/add?name=" + id + ",pass="+name ; k dùng chuyển sang post như dưới
}

app.controller("sign_in", function ($scope, $http) {

    //$scope.senddata = function (id,pass) {
    //    info = {
    //        name: id,
    //        pass: pass
    //    }
    //    $http({
    //        method: "POST",
    //        url: '/Default/add',
    //        data: info,              
    //    })
    //    //  window.location = "tk16food.com"//điều hướng về trang chủ sau khi đăng ký hoặc đăng nhập
    //}

   
       

});
