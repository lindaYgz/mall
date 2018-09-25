var table=document.getElementById("data");
var btns=table.getElementsByTagName("button");

for(var btn of btns){
    btn.onclick=function(){
        var btn=this;
        var span=btn.parentNode.children[1];
        console.log(span);
        var n=parseInt(span.innerHTML);
        if(btn==span.nextElementSibling){
            n++;
        }else if(n>1){
            n--;
        }
       
        span.innerHTML=n;
        var body=document.getElementById("by1");
        var nn=body.querySelector("body>div>span:nth-child(3)");
        nn.innerHTML=`${n}`;
        var price=parseFloat(
                 btn.parentNode
                    .previousElementSibling
                    .innerHTML
                    .slice(1)
        );
        var sub=price*n;
        
        var td=btn.parentNode.nextElementSibling;
        td.innerHTML=`￥${sub.toFixed(2)}`;
        var tds=table.querySelectorAll(
            "tbody td:nth-child(5)"
        );
        var tdTotal=body.querySelector(
            "div span:last-child"
        );
        var total=0;
        for(var td of tds){
            total+=parseFloat(td.innerHTML.slice(1));
        }
        tdTotal.innerHTML=`￥${total.toFixed(2)}`;
    }
}
var chbAll=document.querySelector(
    "table>thead>tr>th:first-child>input"
);
chbAll.onclick=function(){
    var chbAll=this;
    var chbs=document.querySelectorAll(
        "table>tbody>tr>td:first-child>input"
    );
    for(var chb of chbs){
        chb.checked=chbAll.checked;
    }
}
var chbs=document.querySelectorAll(
    "table>tbody>tr>td:first-child>input"
  )
  for(var chb of chbs){
    chb.onclick=function(){
      var chbAll=document.querySelector(
        "table>thead>tr>th:first-child>input"
      )
      var unchecked=document.querySelector(
        "table>tbody>tr>td:first-child>input:not(:checked)"
      );
      if(unchecked!=null) chbAll.checked=false;
      else chbAll.checked=true;
    }
  }
