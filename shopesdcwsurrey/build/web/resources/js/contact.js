$(function(){
    //original field values
    var field_values = {
            //id        :  value
            'name'  : 'name',
            'email'  : 'email',
            'message' : 'message'
    };


    //inputfocus
    $('input#name').inputfocus({ value: field_values['name'] });
    $('input#email').inputfocus({ value: field_values['email'] }); 
    $('textarea#message').inputfocus({ value: field_values['message'] });



    
        //ckeck if inputs aren't empty
        var fields = $('#aligned input[type=text], #aligned input[type=email]');
        var error = 0;
        fields.each(function(){
            var value = $(this).val();
            if( value.length<4 || value==field_values[$(this).attr('id')] ) {
                $(this).addClass('error');
                $(this).effect("shake", { times:3 }, 50);
                
                error++;
            } else {
                $(this).addClass('valid');
            }
        });        
        
       


    $('#submitbtn').click(function(){
        //remove classes
        $('#aligned input').removeClass('error').removeClass('valid');

        var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;  
        var fields = $('#aligned input[type=text]');
        var error = 0;
        fields.each(function(){
            var value = $(this).val();
            if( value.length<1 || value==field_values[$(this).attr('id')] || ( $(this).attr('id')=='email' && !emailPattern.test(value) ) ) {
                $(this).addClass('error');
                $(this).effect("shake", { times:3 }, 50);
                
                error++;
            } else {
                $(this).addClass('valid');
            }
        });
      
    });


    });