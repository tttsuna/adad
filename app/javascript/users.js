var working = false;
var name = $('form').attr('name')
console.log(name);
$('.login').on('submit', function(e) {
    console.log("hhogehoge");
    e.preventDefault();
    if (working) return;
    working = true;
    var $this = $(this),
        $state = $this.find('button > .state');
    $this.addClass('loading');
    $state.html('Authenticating');
    setTimeout(function() {
        $this.addClass('ok');
        $state.html('Welcome back!');
        setTimeout(function() {
            $state.html('Log in');
            $this.removeClass('ok loading');
            working = false;
        }, 10000);
    }, 10000);
});

