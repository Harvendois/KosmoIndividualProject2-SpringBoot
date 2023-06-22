function scrollToSection(section) {
    document.querySelector(section).scrollIntoView({ behavior: 'smooth' });
}

window.addEventListener('DOMContentLoaded', () => {
    
    var hero_m = document.querySelector('#hero > p:nth-child(2)');
    var hero_main_m = document.querySelector('#hero > p:nth-child(2)');

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