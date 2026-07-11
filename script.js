function createSlider(containerId, trackId, nextId, prevId) {
    const track = document.getElementById(trackId);
    const cards = track.children;
    const nextBtn = document.getElementById(nextId);
    const prevBtn = document.getElementById(prevId);
    const container = document.getElementById(containerId);

    let index = 0;
    const visible = 6;

    function update() {
          const width = cards[0].getBoundingClientRect().width;
    track.style.transform = `translateX(-${index * width}px)`;
    }

    nextBtn.addEventListener('click', () => {
        index++;
        if (index > cards.length - visible) index = 0;
        update();
    });

    prevBtn.addEventListener('click', () => {
        index--;
        if (index < 0) index = cards.length - visible;
        update();
    });

    let auto = setInterval(() => nextBtn.click(), 3000);

    container.addEventListener('mouseenter', () => clearInterval(auto));
    container.addEventListener('mouseleave', () => {
        auto = setInterval(() => nextBtn.click(), 3000);
    });

    window.addEventListener('resize', update);
    update();
}

createSlider("slider1", "bookTrack1", "nextBtn1", "prevBtn1");
createSlider("slider2", "bookTrack2", "nextBtn2", "prevBtn2");
createSlider("slider3", "bookTrack3", "nextBtn3", "prevBtn3");
createSlider("slider4", "bookTrack4", "nextBtn4", "prevBtn4");
createSlider("slider5", "bookTrack5", "nextBtn5", "prevBtn5");



        let like_count=document.getElementById("like_count");
        let cart_count=document.getElementById("cart_count");
        let cartBtn=document.querySelectorAll(".b1");
        let likeBtn=document.querySelectorAll(".b2");

        likeBtn.forEach(button=>{
            button.addEventListener("click",function(){
            this.classList.toggle("liked");
            let likes=parseInt(like_count.textContent);
            if(this.classList.contains("liked")){
                likes++;
            }
            else{
                likes--;
            }
             like_count.textContent=likes;

            })
           
        })

        cartBtn.forEach(button=>{
            button.addEventListener("click",function(){
            this.classList.toggle("added");
            let add_cart=parseInt(cart_count.textContent);

            if(this.classList.contains("added")){
                add_cart++;
            }
            else{
                add_cart--;
            }
            
            cart_count.textContent=add_cart;

            })
           
        })

        document.getElementById("subscribeForm").addEventListener("submit",function(e){
            e.preventDefault();
            let email=document.getElementById("email").value;

            let xhr=new XMLHttpRequest();
            xhr.open("POST","subscribe.php",true);
            xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
            xhr.onload=function(){
                alert(this.responseText);
            }
            xhr.send("email="+encodeURIComponent(email));

        })

        
