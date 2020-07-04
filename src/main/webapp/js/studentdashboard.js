let gooIndex = document.getElementById('goo-index');
let hoverEnter = num =>{
    gooIndex.style.top = 100*num+'px';
    let allScreens = document.querySelectorAll('.screen');
    allScreens.forEach(e=>{
        e.classList.remove('visible')
    })
    let nowVisible = document.getElementById('screen_'+num);
    nowVisible.classList.add('visible');
}