const ready = () => {
  const links = document.getElementsByClassName('wikiLink')
  for (link of links){
    link.addEventListener("click", e => {
      e.preventDefault();
      if(!confirm("Are you sure you want to view this article?")) {
        return
      }
      window.location.href = link.href
    })
  }
}

document.addEventListener("DOMContentLoaded", ready);