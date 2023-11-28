// querySelector selects the first element with id cursor and store it in variable crsr 
var crsr = document.querySelector("#cursor");
var crsrblr = document.querySelector("#cursor-blur");

//the selected css element's left and top property(position) are updated everytime the mouse moves.
document.addEventListener("mousemove",(event)=>{        // when mousemove happens we trigger the function with event variable to access the properties of the mouse like x-position, y-position.
     crsr.style.left = event.x+"px"
     crsr.style.top = event.y+"px"
     crsrblr.style.left = event.x - 200 +"px"
     crsrblr.style.top = event.y - 200 +"px"
})

const butonElez = document.querySelectorAll(".buton");

butonElez.forEach((butonEle) =>{
butonEle.addEventListener("mouseover", (events)=>{
    const x = events.pageX - butonEle.offsetLeft;
    const y = events.pageY - butonEle.offsetTop;

    butonEle.style.setProperty("--xPos", x + "px");
    butonEle.style.setProperty("--yPos", y + "px");
    });
})


gsap.to("#nav",{
    backgroundColor :"#000",
    height: "110px",
    duration: 0.5,
    scrollTrigger:{
        trigger: "#nav",
        scroller: "body",
        // markers: true,
        start: "top -10%",
        end:"top -11%",
        scrub:1
    }
})

gsap.to("#main",{
    backgroundColor:"#000",
    scrollTrigger:{
        trigger:"#main",
        scroller:"body",
       // markers:"true",
        start:"top -25%",
        end:"top -70%",
        scrub:"2"

    }
})


