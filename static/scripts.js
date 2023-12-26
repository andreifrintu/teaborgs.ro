    
    /*
    
        Website developed by Andrei Frîntu
        Critical maintenance @ codulluiandrei.ro

        Version:    3.7@main:tb
        Stage:      published@teaborgs.ro
        Contact:    admin@codulluiandrei.ro

    */
    
var fullURL = new URL(document.currentScript.src);
var paramsURL = fullURL.searchParams;
var loc = paramsURL.get(`loc`);

$("#year").change(function() {
    window.location.href = $("#year").find(":selected").val();
});

$(document).ready(function() {

    // Animations for navigation bar
    var NavbarDelay = setTimeout(() => {
        $('.fit').first().css("visibility", "visible");
        $('.fit').first().addClass("fade-in-top");
        NavbarDelay = setTimeout(() => {
            $('.fit:nth-child(2)').css("visibility", "visible");
            $('.fit:nth-child(2)').addClass("fade-in-top");
            NavbarDelay = setTimeout(() => {
                $('.fit:nth-child(3)').css("visibility", "visible");
                $('.fit:nth-child(3)').addClass("fade-in-top");
                NavbarDelay = setTimeout(() => {
                    $('.fit:nth-child(4)').css("visibility", "visible");
                    $('.fit:nth-child(4)').addClass("fade-in-top");
                    NavbarDelay = setTimeout(() => {
                        $('.fit:nth-child(5)').css("visibility", "visible");
                        $('.fit:nth-child(5)').addClass("fade-in-top");
                        NavbarDelay = setTimeout(() => {
                            $('.fit:nth-child(6)').css("visibility", "visible");
                            $('.fit:nth-child(6)').addClass("fade-in-top");
                            NavbarDelay = setTimeout(() => {
                                $('.fit:nth-child(7)').css("visibility", "visible");
                                $('.fit:nth-child(7)').addClass("fade-in-top");
                                NavbarDelay = setTimeout(() => {
                                    $('.fit:nth-child(8)').css("visibility", "visible");
                                    $('.fit:nth-child(8)').addClass("fade-in-top");
                                    NavbarDelay = setTimeout(() => {
                                        $('.fit:nth-child(9)').css("visibility", "visible");
                                        $('.fit:nth-child(9)').addClass("fade-in-top");
                                        NavbarDelay = setTimeout(() => {
                                            $('.fit:nth-child(10)').css("visibility", "visible");
                                            $('.fit:nth-child(10)').addClass("fade-in-top");
                                            clearTimeout(NavbarDelay);
                                            var Delay = setTimeout(() => {
                                                $('.fil').first().css("visibility", "visible");
                                                $('.fir').first().css("visibility", "visible");
                                                $('.fil').first().addClass("fade-in-left");
                                                $('.fir').first().addClass("fade-in-right");
                                                clearTimeout(Delay);
                                            }, 50);
                                        }, 50);
                                    }, 50);
                                }, 50);
                            }, 50);
                        }, 50);
                    }, 50);
                }, 50);
            }, 50);
        }, 50);
    }, 100);

    var ThirdCounter = $("#ThirdCounter").val();
    
    var InterObs = new IntersectionObserver(function(array) {
        array.forEach(function(e) {
            if (e.isIntersecting) {
                if (e.target.id == 'Second') AnimSecond();
                if (e.target.id == 'Footer') AnimFooter();
                for (var i = 1; i <= ThirdCounter; i++) 
                    if (e.target.id == 'Third' + i) AnimThird(e.target.id);
            }
        });
    }, {threshold: 0});
    InterObs.observe($('#Second')[0]);
    InterObs.observe($('#Footer')[0]);
    for (var i = 1; i <= ThirdCounter; i++) 
        InterObs.observe($('#Third' + i)[0]);
        
});

function swapLanguage() {
    var flagLanguage = $("#swapLanguage").attr('src');
    if (flagLanguage == '/static/icons/icons8-great-britain.png')
        setCookie("language", "0", 30);
    else
        setCookie("language", "1", 30);
    location.reload();
}

function setCookie(cookieName, cookieValue, expirationDays) {
    const d = new Date();
    d.setTime(d.getTime() + (expirationDays * 24 * 60 * 60 * 1000));
    const expires = "expires=" + d.toUTCString();
    document.cookie = cookieName + "=" + cookieValue + ";" + expires + ";path=/";
}
function getCookie(cookieName) {
    const cookie = document.cookie.split('; ').find(row => row.startsWith(cookieName + '='));
    return cookie ? cookie.split('=')[1] : '';
}

function setCookie(cookieName, cookieValue, expirationDays) {
    const d = new Date();
    d.setTime(d.getTime() + (expirationDays * 24 * 60 * 60 * 1000));
    const expires = "expires=" + d.toUTCString();
    document.cookie = cookieName + "=" + cookieValue + ";" + expires + ";path=/";
}

function AnimSecond() {
    var Delay = setTimeout(() => {
        $('#Second').css("visibility", "visible");
        $('#Second').addClass("fade-in-bottom");
        Delay = setTimeout(() => {
            $('#Second .fil').css("visibility", "visible");
            $('#Second .fir').css("visibility", "visible");
            $('#Second .fil').addClass("fade-in-left");
            $('#Second .fir').addClass("fade-in-right");
            if (loc == 'home') {
                var NavbarDelay = setTimeout(() => {
                    $('.fib').first().css("visibility", "visible");
                    $('.fib').first().addClass("fade-in-bottom");
                    NavbarDelay = setTimeout(() => {
                        $('.fib:nth-child(2)').css("visibility", "visible");
                        $('.fib:nth-child(2)').addClass("fade-in-bottom");
                        NavbarDelay = setTimeout(() => {
                            $('.fib:nth-child(3)').css("visibility", "visible");
                            $('.fib:nth-child(3)').addClass("fade-in-bottom");
                            clearTimeout(NavbarDelay);
                        }, 100);
                    }, 100);
                }, 100);
            }
            clearTimeout(Delay);
        }, 400);
    }, 100);
}

function AnimThird(Counter) {
    var Delay = setTimeout(() => {
        $('#' + Counter).css("visibility", "visible");
        if ($('#' + Counter).hasClass('fil'))
            $('#' + Counter).addClass("fade-in-left");
        else if ($('#' + Counter).hasClass('fir'))
            $('#' + Counter).addClass("fade-in-right");
        else
            $('#' + Counter).addClass("fade-in-bottom");
        clearTimeout(Delay);
    }, 100);
}

function AnimFooter() {
    var Delay = setTimeout(() => {
        $('#Footer').css("visibility", "visible");
        $('#Footer').addClass("fade-in-bottom");
        Delay = setTimeout(() => {
            $('#Footer .fil').css("visibility", "visible");
            $('#Footer .fir').css("visibility", "visible");
            $('#Footer .fil').addClass("fade-in-left");
            $('#Footer .fir').addClass("fade-in-right");
            var NavbarDelay = setTimeout(() => {
                $('.fil').first().css("visibility", "visible");
                $('.fil').first().addClass("fade-in-left");
                NavbarDelay = setTimeout(() => {
                    $('.fir:nth-child(2)').css("visibility", "visible");
                    $('.fir:nth-child(2)').addClass("fade-in-right");
                    NavbarDelay = setTimeout(() => {
                        $('.fir:nth-child(3)').css("visibility", "visible");
                        $('.fir:nth-child(3)').addClass("fade-in-right");
                        NavbarDelay = setTimeout(() => {
                            $('.fir:nth-child(4)').css("visibility", "visible");
                            $('.fir:nth-child(4)').addClass("fade-in-right");
                            clearTimeout(Delay);
                        }, 100);
                    }, 100);
                }, 100);
            }, 100);
            clearTimeout(Delay);
        }, 400);
    }, 100);
}