const initScrollAnimation = () => {
  const cards = document.querySelectorAll('.card-site-container');
  window.addEventListener('scroll', checkCards);
  function checkCards () {
    const triggerbottom = window.innerHeight / 5;
    cards.forEach(card => {
      const cardTop = card.getBoundingClientRect().top;
      if (cardTop < triggerbottom){
        card.classList.add('show');
      } else {
        card.classList.remove('show');
      };
    });

  };
}

export { initScrollAnimation };
