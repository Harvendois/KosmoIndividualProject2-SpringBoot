// ELEMENT
function elm(x){
    var target = x.substring(1);
    var type = x.charAt(0);
    if(type == '#'){
        return document.getElementById(target);
    }else if(type == '.'){
        return document.getElementsByClassName(target);  
    }else {
        return document.getElementsByTagName(x);
    }
}

// INPUT IMG
function getImg(x){
    if( x.files.length > 0 ){
        var fr = new FileReader();
        var imgSrc = null;
        var parent = x.parentElement;
        fr.onload = function(e){
            imgSrc = e.target.result;
            if( parent.getElementsByTagName("img").length > 0 ){
                parent.removeChild(parent.getElementsByTagName("img")[0]);
            }
            var img = document.createElement("img");
            img.setAttribute("src",imgSrc);
            img.style.width = "80px";
            img.style.verticalAlign = "top";
            parent.appendChild(img);
        }
        fr.readAsDataURL(x.files[0]);
    }
}

// NEW INPUT
for(var i=0,len=elm(".btnNewInput").length; i<len; i++){
    elm(".btnNewInput")[i].onclick = function(){
        findClosest(this,elm(".inputGroup")).nextElementSibling.classList.remove("hide");
    };
}

// SUB LIST
if(elm(".btnCaret")){
    for(var i=0,len=elm(".btnCaret").length; i<len; i++){
        elm(".btnCaret")[i].onclick = function(){
            var row = findClosest(this,elm(".row"));     
            row.classList.toggle("is-active");
        }
    }   
}


// FILTER
if(elm('.btnFilter') != undefined){
    for(var i=0,len=elm('.btnFilter').length; i<len; i++){
        elm('.btnFilter')[i].onclick = function(){
            elm('.boxFilter')[0].classList.toggle('is-active');    
        }      
    }
}

//FIND PARENT
function findClosest(x,parent){
    do{
        if(parent.length > 0){
            for(var i=0,len=parent.length; i<len; i++){
                if( x.isSameNode(parent[i]) ){
                    return x;
                }
            }
        }else {
            if( x.isSameNode(parent) ){
                return x;
            }
        }
    }while(x = x.parentElement);
}

// FIND CHILDREN
function findChildren(x,y){
    var arr = [];
    if(y.length > 0){
        for(var i=0,len=y.length; i<len; i++){
             if( x.isSameNode(findClosest(y[i],x)) ){
                 arr.push(y[i]); 
             }
        }
    }else {
        if( x.isSameNode(findClosest(y,x)) ){
            arr.push(y); 
        }
    } 
    return arr;
}

//RENDER HTML
function renderHTML(x,content){
    var tag = document.createElement(x);
    tag.append(content);
    return tag;
}
    
//TOGGLE
function toggle(x){
  var css = window.getComputedStyle(x,null);
    if(css.getPropertyValue("display") == 'none'){
        x.style.display = 'block';
    }else {
        x.style.display = 'none';
    }
}


//SLIDE	
function slideToggle(el){
    var elCss = window.getComputedStyle(el,null);
    if(elCss.getPropertyValue("height") == 0+'px'){
        el.style.height = el.scrollHeight +"px";
    }else {
        el.style.height = 0;     
    }
}

function extend(o1,o2){
		if(o1 instanceof Array){
			var result = [];
			// RESULT = O1
			for(var i=0,len=o1.length; i<len; i++){
				result.push(o1[i]);
			}
			// RESULT = O2
			for(var i=0,len=o2.length; i<len; i++){
				if(result.indexOf(o2[i]) < 0){
					result.push(o2[i]);
				}
			}
		}else if(typeof o1 == 'object'){
			var result = {};
			var o1Keys = Object.keys(o1);
			for(var i=0,len=o1Keys.length; i<len; i++){
				result[o1Keys[i]] = o1[o1Keys[i]];
			}
			var o2Keys = Object.keys(o2);
			for(var i=0,len=o2Keys.length; i<len; i++){
				result[o2Keys[i]] = o2[o2Keys[i]];
			}
		}
		return result;
	}
	function extend2(o1,o=[]){
		var result = o1;
		for(var i=0,len=o.length; i<len; i++){
			var result = extend(result,o[i]);
		}
		return result;
	}





// console.log(findClosest(elm("#test"),elm("ul")));

