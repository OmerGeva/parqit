const toggleNavbar = () => {
  const openNavBtn = document.getElementById("open-nav-btn");
  const closeNavBtn = document.getElementById('close-nav-btn')

  openNavBtn.addEventListener('click', () => {
    document.getElementById("mySidenav").style.left = "0";
  })
  closeNavBtn.addEventListener('click', () => {
    document.getElementById("mySidenav").style.left = "-250px";
  })
}

export { toggleNavbar }
