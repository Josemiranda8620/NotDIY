const scrollEffect=()=> {
window.addEventListener('scroll',(e)=>{
  const nav = document.querySelector('.navbar-lewagon');
  if(window.pageYOffset>0){
    nav.classList.add("add-shadow");
  }else{
    nav.classList.remove("add-shadow");
      }
      console.log("Hello")
});
}

export { scrollEffect };
