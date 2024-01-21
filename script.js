function navbarHamburger() {
  const navHamburger = document.getElementById("burger-navbar");
  const navbarMenu = document.getElementById("navbar-menu");
  navHamburger.classList.toggle("border-sky-400");
  navbarMenu.classList.toggle("hidden");
  navHamburger.classList.toggle("border-white");
}

function dropdownDataMaster() {
  const navDropdown = document.getElementById("dropdownDataMaster");
  const navDropdownMenu = document.getElementById("dropdownDataMasterMenu");
  navDropdown.classList.toggle("text-sky-200");
  navDropdown.classList.toggle("text-white");
  navDropdownMenu.classList.toggle("hidden");
}

function dropdownTransaksi() {
  const navDropdown = document.getElementById("dropdownTransaksi");
  const navDropdownMenu = document.getElementById("dropdownTransaksiMenu");
  navDropdown.classList.toggle("text-sky-200");
  navDropdown.classList.toggle("text-white");
  navDropdownMenu.classList.toggle("hidden");
}