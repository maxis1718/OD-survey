
$(document).ready(function(){

    // var section_height = $( window ).height();
    // var top_height = $('#navbar-top').height();
    // $('.row').find('section').height(section_height-top_height);

    events();

});


function events(){

    $('#gender-block').find('.info-box').hover(function(e){
        $(this).find('.box-footer').find('.arrow-up').toggleClass('invisible');
        // $(this).toggleClass('highlight');
    });
}