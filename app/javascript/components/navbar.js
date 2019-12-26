const toggleNavbar = () => {
  const openNavBtn = document.getElementById("open-nav-btn");
  const closeNavBtn = document.getElementById('close-nav-btn')

  openNavBtn.addEventListener('click', () => {
    document.getElementById("mySidenav").style.width = "250px";
  })
  closeNavBtn.addEventListener('click', () => {
    document.getElementById("mySidenav").style.width = "0px";
  })
}

export { toggleNavbar }
