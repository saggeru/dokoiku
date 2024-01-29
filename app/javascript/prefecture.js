function pullDown() {

  const pullDownButton = document.getElementById("lists")
  const pullDownParents = document.getElementById("pull-down")
  const pullDownParents2 = document.getElementById("pull-down2")
  const pullDownParents3 = document.getElementById("pull-down3")
  const pullDownParents4 = document.getElementById("pull-down4")
  const pullDownParents5 = document.getElementById("pull-down5")
  const pullDownParents6 = document.getElementById("pull-down6")

  pullDownButton.addEventListener('mouseout', function(){
    this.removeAttribute("style")
  })

  pullDownButton.addEventListener('click', function() {
    if (pullDownParents.getAttribute("style") == "display:block;") {
      pullDownParents.removeAttribute("style")
    } else {
      pullDownParents.setAttribute("style", "display:block;")
    }
  })

  pullDownButton.addEventListener('click', function() {
    if (pullDownParents2.getAttribute("style") == "display:block;") {
      pullDownParents2.removeAttribute("style")
    } else {
      pullDownParents2.setAttribute("style", "display:block;")
    }
  })

  pullDownButton.addEventListener('click', function() {
    if (pullDownParents3.getAttribute("style") == "display:block;") {
      pullDownParents3.removeAttribute("style")
    } else {
      pullDownParents3.setAttribute("style", "display:block;")
    }
  })

  pullDownButton.addEventListener('click', function() {
    if (pullDownParents4.getAttribute("style") == "display:block;") {
      pullDownParents4.removeAttribute("style")
    } else {
      pullDownParents4.setAttribute("style", "display:block;")
    }
  })

  pullDownButton.addEventListener('click', function() {
    if (pullDownParents5.getAttribute("style") == "display:block;") {
      pullDownParents5.removeAttribute("style")
    } else {
      pullDownParents5.setAttribute("style", "display:block;")
    }
  })

  pullDownButton.addEventListener('click', function() {
    if (pullDownParents6.getAttribute("style") == "display:block;") {
      pullDownParents6.removeAttribute("style")
    } else {
      pullDownParents6.setAttribute("style", "display:block;")
    }
  })
}

window.addEventListener('load', pullDown)