$(document).ready(function(){
    $('#loginForm').submit(function(event){
        // submit이 자동으로 되는 기능을 막기
        event.preventDefault();

        //id, pwd를 가져오기
        var id = $('#id').val();

        console.log(id);

        // 서버로 post 전송
        $.post("http://httpbin.org/post",
            { "id" : id},
            function(data)   {
                //alert(data.form.id + '님 로그인되었습니다.');
                var myModal = $('#myModal');
                myModal.modal();
                myModal.find('.modal-body').text(data.form.id + '님 회원가입되었습니다.');
            });
    });
});