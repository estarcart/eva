var toggle = document.getElementById('container-dark');
var body = document.querySelector('body');

toggle.onclick = function(){
    toggle.classList.toggle('active');
    body.classList.toggle('active');
    if(body.classList.contains('active')){
        localStorage.setItem('darkMode', 'on');
    } else {
        localStorage.setItem('darkMode', 'off');
    }
}

if(localStorage.getItem('darkMode') == 'on'){
    toggle.classList.add('active');
    body.classList.add('active');
} else {
    toggle.classList.remove('active');
    body.classList.remove('active');
}


