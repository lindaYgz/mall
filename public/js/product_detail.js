document.getElementById("content1").style.zIndex="10";
var tabs=document.querySelectorAll("[data-toggle=tab]");
for(var tab of tabs){
    tab.onclick=function(e){
        e.preventDefault();
        var tab=this;
        var divs=document.querySelectorAll("#container div");
        for(var div of divs)
        div.style.zIndex=""
        var id=tab.getAttribute("data-target")
        document.querySelector(id).style.zIndex="10"
    }
}