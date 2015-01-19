
$(document).ready(function(){

    // var section_height = $( window ).height();
    // var top_height = $('#navbar-top').height();
    // $('.row').find('section').height(section_height-top_height);
    glb_events();
    events();
});

function rightNow() {
    var d = new Date();
    return { 'minute':d.getMinutes(), 'hour':d.getHours(), 'date':d.getDate(), 'month': d.getMonth()+1, 'year':d.getFullYear()  };
}

function glb_events(){
    $(document).on('click', '.opinion-other', function(e){ 
        if( $(this).hasClass('chosen') ){ 
            $(this).removeClass('chosen');
            // $(this).find('.opinion-toggle').toggleClass('hidden');
        }
        else { 
            $(this).addClass('chosen'); 
            // $(this).find('.opinion-toggle').toggleClass('hidden');
        }
    }).on('mouseenter', '.opinion-other', function(e){
        $(this).addClass('highlight'); 
    }).on('mouseleave', '.opinion-other', function(e){
        $(this).removeClass('highlight'); 
    });
}

function events(){

    $('#gender-block').find('.info-box').hover(function(e){
        $(this).find('.box-footer').find('.arrow-up').toggleClass('invisible');
        // $(this).toggleClass('highlight');
    });

    // $('.like-btn-wrap').find('.like-btn').hover(function(e){
    //     $(this).toggleClass('hidden');
    // });

    $('.toggle').hover(function(e){
        $(this).toggleClass('hidden');
        // $(this).parent().find('.toggle').toggleClass('hidden');
    });

    $('.opinion-tag')
        .hover(function(e){ 
            $(this).toggleClass('highlight'); 
        })
        .click(function(e){ 
            if( $(this).hasClass('chosen') ){ 
                $(this).removeClass('chosen');
            }
            else { 
                $(this).addClass('chosen'); 
            }
        });

    $('.opinion-more-input').keyup(function(e){
        if(e.which == 13 || e.keyCode == 13){

            var text = $.trim($(this).val());
            if(text.length == 0){ return false; }
            var btn = $('<button/>').addClass('opinion-tag opinion-other d-ib btn btn-info mb-36 chosen').appendTo($('.opinions-container'));
            $('<div></div>').addClass('opinion-text d-ib').attr('val', 'other').text(text).appendTo(btn);
            $('<div></div>').addClass('opinion-add opinion-toggle d-ib hidden').attr('val', 'other').text('+').appendTo(btn);            
            $('<div></div>').addClass('opinion-minus opinion-toggle d-ib').attr('val', 'other').text('+').appendTo(btn);            
            $(this).val('');
        }
    });
    
    //global
    $('.box-text').hover(function(e){
        if(!$(this).parents('.scenario-box').hasClass('scenario-add')){
            $(this).toggleClass('bca-60');
        }
    });

    var scenarioPlus = $('.scenario-more-plus');
    var scenarioInput = $('.scenario-more-input');
    var scenarioInputWrap = $('.scenario-more-input-wrap');
    var scenarioToggle = $('.scenario-add').find('.box-text');

    scenarioPlus.click(function(e){
        scenarioToggle.toggleClass('hidden');
        // $(this).addClass('hidden');
        $(this).siblings('.scenario-more-input-wrap').removeClass('hidden').find('input').focus();
    });

    scenarioInput.blur(function(e){
        console.log('$(this).val().length:',$(this).val().length);
        if($.trim($(this).val()).length == 0){
            scenarioInputWrap.addClass('hidden');
            scenarioPlus.removeClass('hidden');
        }
    })


    $('.scenario-more-input').keyup(function(e){
        if(e.which == 13 || e.keyCode == 13){
            var scenario = $.trim($(this).val());
            if(scenario.length == 0){ return false; }
            // console.log(scenario);
            var box = $('<div></div>').addClass('scenario-box f-l p-r');
            $('<div></div>').addClass('box-bg w-100p h-100p default-restaurant').appendTo(box);
            $('<div></div>').addClass('box-text bca-40 p-a fs-24 lh-72 fc-white z-1').attr('scenario',scenario).text(scenario).appendTo(box);
            // $(this).prepend()


            $( box ).insertBefore( $(this).parents('.scenario-box') );
            // console.log(box);

            // restore state

            $(this).val('');
            scenarioInputWrap.addClass('hidden');
            scenarioPlus.removeClass('hidden');
            // clear 
        }
    });

}



function submit(){

    var opinions = $.map( $('.opinions-container').find('button.chosen'), function(obj, i){  return {'score': $(obj).attr('score'), 'opid': $(obj).attr('opid')}; });
    var scenarios = $.map( $('.box-badge'), function(obj, i){
        if(!$(obj).hasClass('hidden')) {
            return $(obj).siblings('.box-text').attr('scenario');
        }
    });
    var data = { 'opinions': opinions, 'scenarios': scenarios, 'time': rightNow() };
    $.ajax({
        url: '/send',
        type: 'POST',
        data: JSON.stringify(data),
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        async: false,
        success: function(resp) {
            console.log(resp);
        }
    });
    
    // $.post("/send" , data, function(resp){});
}

