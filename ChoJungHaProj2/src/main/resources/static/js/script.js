/*Hero Section*/ 
/*var clock = document.getElementById('clock');
function time() {
    var date = new Date();
    var hours = date.getHours();
    var minutes = date.getMinutes();
    var seconds = date.getSeconds();
    var session = "AM";
    if (hours == 0) {
        hours = 12;
    }
    if (hours > 12) {
        hours = hours - 12;
        session = "PM";
    }
    hours = (hours < 10) ? "0" + hours : hours;
    minutes = (minutes < 10) ? "0" + minutes : minutes;
    seconds = (seconds < 10) ? "0" + seconds : seconds;
    var time = hours + ":" + minutes + ":" + seconds + " " + session;
    clock.innerHTML = time;
}
setInterval(time, 1000);
*/
/*
var timeSpentMaking = document.getElementById('timeSpentMaking');
function time2() {
    var now = new Date();
    var then = new Date(2023, (4-1), 14);
    var difference = now.getTime() - then.getTime();
    var days = Math.floor(difference/(1000*60*60*24));
    var hours = Math.floor((difference%(1000*60*60*24))/(1000*60*60))
    timeSpentMaking.innerHTML = days +' days '+ hours +' hours since beginning project';
}
setInterval(time2, 1000);*/


function scrollToSection(section) {
    document.querySelector(section).scrollIntoView({ behavior: 'smooth' });
}

window.addEventListener('DOMContentLoaded', () => {
    
    var hero_m = document.querySelector('#hero > p:nth-child(2)');
    var hero_main_m = document.querySelector('#hero > p:nth-child(2)');
    
    var becomeBlack = ()=>{
        hero_main_m.style.color = 'black';
        hero_main_m.style.transition = 'color 2s ease-in-out';
    }
    becomeBlack();

    var typeHeroM = ()=>{
        let text = 'Teammates, family, and above all, God.';
        var textArr = text.split('');
        console.log('%O',textArr);
        for(var i =0; i<textArr.length; i++){
            (function(j) {
                setTimeout(()=>{
                    hero_m.textContent += textArr[j];
                }, 140 * j);
            })(i);
        }
    };
    typeHeroM();
    
});

/*Contacts Section*/
window.addEventListener('DOMContentLoaded', () => {
    var selEmail = document.querySelector('#selectemail');
    var email = document.getElementById('email');
    var toggle = false;
    if(email.value.split('@')[1] === undefined){ 
        toggle = true;
    };
    console.log(toggle);

    selEmail.onchange = () => {
        if(toggle){
        email.value = email.value + '@' + selEmail.value;
        console.log(email.value.split('@')[0]);
        console.log(email.value.split('@')[1]);
        toggle = false;
        }
        else{
            if(selEmail.value ==='Select Email'){
                return;
            }
            email.value = email.value.split('@')[0] + '@' + selEmail.value;
            console.log(email.value.split('@')[0]);
            console.log(email.value.split('@')[1]);
        }
    };
});
/*submit.onclick=()=>{
      //clicking will make the form information to be submitted to a database
        //and the form will be cleared
        name.value = '';
        email.value = '';
        message.value = '';
        radios.forEach((radio) => {
            radio.checked = false;
        });
    };*/

/*Projects Section*/
/*
var proj1 = document.querySelector('#project1');
var proj1_h = document.querySelector('#project1_hover');
console.log(proj1_h);
console.log(proj1);

proj1.onmouseover = (e)=>{
    proj1.style.display = 'none';
    proj1_h.style.display = 'block';
};
proj1_h.onmouseout = (e)=>{
    proj1_h.style.display = 'none';
    proj1.style.display = 'block';
};*/