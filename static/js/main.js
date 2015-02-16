
// config
var MaxCharOpinion = 10;

$(document).ready(function(){
    glb_events();
    events();
    submitEvents.bind();
}).load(function(){
    
});


function rightNow() {
    var d = new Date();
    return { 'minute':d.getMinutes(), 'hour':d.getHours(), 'date':d.getDate(), 'month': d.getMonth()+1, 'year':d.getFullYear()  };
}

function glb_events(){
    $(document).on('click', '.box-text', function(e){
        $(this).siblings('.fa-check-circle').toggleClass('hidden').toggleClass('chosen');
    });
    $(document).on('click', '.opinion-other', function(e){ 
        if( $(this).hasClass('chosen') ){ 
            $(this).removeClass('chosen');
        }
        else { 
            $(this).addClass('chosen');
        }
    }).on('mouseenter', '.opinion-other', function(e){
        $(this).addClass('highlight'); 
    }).on('mouseleave', '.opinion-other', function(e){
        $(this).removeClass('highlight'); 
    });   
}

function events(){

    $('.carousel').carousel();

    $('#gender-block').find('.info-box').hover(function(e){
        $(this).find('.box-footer').find('.arrow-up').toggleClass('invisible');
    });

    $('.toggle').hover(function(e){
        $(this).toggleClass('hidden');
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
            var btn = $('<button/>').addClass('opinion-tag opinion-other d-ib btn btn-info mb-36 chosen').attr('score','').attr('opid','other').attr('text',text).appendTo($('.opinions-container'));
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
        $(this).siblings('.scenario-more-input-wrap').removeClass('hidden').find('input').focus();
    });

    scenarioInput.blur(function(e){
        if($.trim($(this).val()).length == 0){
            scenarioInputWrap.addClass('hidden');
            scenarioPlus.removeClass('hidden');
        }
    })


    $('.scenario-more-input').keyup(function(e){
        if(e.which == 13 || e.keyCode == 13){
            var scenario = $.trim($(this).val());
            if(scenario.length == 0){ return false; }
            var box = $('<div></div>').addClass('scenario-box f-l p-r');
            $('<div></div>').addClass('box-bg w-100p h-100p default-restaurant').appendTo(box);
            $('<div></div>').addClass('box-text bca-40 p-a fs-24 lh-72 fc-white z-1 ov-h').attr('scenario',scenario).text(scenario).appendTo(box);
            $('<i></i>').addClass('fa fa-check-circle p-a z-3 fc-white fs-24 chosen').appendTo(box);

            $( box ).insertBefore( $(this).parents('.scenario-box') );

            $(this).val('');
            scenarioInputWrap.addClass('hidden');
            scenarioPlus.removeClass('hidden');
        }
    });

    bindCommentEvents();

}

function bindCommentEvents() {
    var dd = $('#age-dropdown');
    var firstdd = true;
    dd.find('.age-opt').click(function(e){
        dd.find('.btn-text').text( $(this).text() ).attr('value', $(this).attr('value'));
        if(firstdd == true)
        {
            dd.siblings('.txt-toggle').toggleClass('hidden');
            firstdd = false;
        }
    });
    var gd = $('#gender-dropdown');
    var firstgd = true;
    gd.find('.gender-opt').click(function(e){
        gd.find('.btn-text').html( $(this).html() ).attr('value', $(this).attr('value'));
        if(firstgd == true)
        {
            gd.siblings('.txt-toggle').toggleClass('hidden');
            firstgd = false;
        }
    });    
}


// var loopTimer = setInterval(loop, 2000);
// function loop(){
//     loopTimer
// }


var submitEvents = {
    bind: function(){
        $('#submit-all-btn').click(function(){
            var data = submitEvents.fetch();
            submitEvents.post(data);
        });

        $('.listening').click(function(){
            if($('#submit-all-btn').hasClass('hidden')) {
                submitEvents.resetStatus();
            }
        });
    },
    fetch: function(){
        var chosenOpinionObjs = $('.opinions-container').find('.chosen');
        var chosenScenarioObjs = $('.scenario-box').find('.chosen');

        // filter out potential garbage opinions/comments
        chosenOpinionObjs = chosenOpinionObjs.filter(function(i, obj){ return $(obj).attr('text').length < MaxCharOpinion; });
        
        var opinionID = $.map(chosenOpinionObjs, function(obj, i){ return $(obj).attr('opid'); });
        var opinionText = $.map(chosenOpinionObjs, function(obj, i){ return ; });
        var opinionScore = $.map(chosenOpinionObjs, function(obj, i){ return $(obj).attr('score'); });

        var opinions = $.map(chosenOpinionObjs, function(obj, i){  

            return {'score': $(obj).attr('score'), 'opid': $(obj).attr('opid'), 'text': $(obj).attr('text')};
        });

        // collect scenarios
        var scenarios = $.map(chosenScenarioObjs, function(obj, i){
            return $(obj).siblings('.box-text').attr('scenario');
        });
        var textarea = $.trim($('.comments-container').find('textarea').val());

        var age = $('#age-dropdown-btn').find('.btn-text').attr('value');
        var gender = $('#gender-dropdown-btn').find('.btn-text').attr('value');

        var data = {
            'opinions': opinions,
            'scenarios': scenarios,
            'comments': textarea,
            'age': age,
            'gender': gender,
            'time': rightNow(),
        }
        return data;
    },
    post: function(data){
        console.log(data);

        $.ajax({
            url: '/digest',
            type: 'POST',
            data: JSON.stringify(data),
            contentType: 'application/json; charset=utf-8',
            dataType: 'json',
            beforeSend: function(){
                $('#submit-all-btn').addClass('hidden');
                $('#pending-btn').removeClass('hidden');
            },
        }).done(function(resp){
            console.log('response:', resp);
            $('#pending-btn').addClass('hidden');
            $('#thanks-btn').removeClass('hidden');
        
        });
    },
    resetStatus: function(){

        $('#pending-btn').addClass('hidden');
        $('#thanks-btn').addClass('hidden');
        $('#submit-all-btn').removeClass('hidden');
    }
}
