window.addEventListener('DOMContentLoaded', function () {
  var blinking = false,
    interval,
    blinkEl = document.getElementsByClassName('blink')[0],
    blinkBtn = document.getElementById('blinkbutton')
    stopBlinkBtn = document.getElementById('stopblinkbutton');
  stopBlinkBtn.style.display = 'none';
  var interval = {};
  
  function toggleBlinking(el) {
    var display = el.style.display;
    if (display === 'inline') {
      el.style.display = 'none';
    } else {
      el.style.display = 'inline';
    }
  }

  blinkBtn.addEventListener('click', function () {
    interval = setInterval(function () {
      toggleBlinking(blinkEl)
    }, 200);
    stopBlinkBtn.style.display = 'inline';
    blinkBtn.style.display = 'none';
  });

  stopBlinkBtn.addEventListener('click', function () {
    clearInterval(interval);
    blinkEl.style.display = 'none';
    stopBlinkBtn.style.display = 'none';
    blinkBtn.style.display = 'inline';
  })

  // blinkBtn.addEventListener('click', function () {
  //   if (!blinking) {
  //     blinkBtn.innerText = 'Click to stop blinking'
  //     interval = setInterval(function () {
  //       toggleBlinking(blinkEl)
  //     }, 200);
  //     blinking = true;
  //   } else {
  //     clearInterval(interval);
  //     blinkBtn.innerText = 'Click to see non-compliant flashing';
  //     blinkEl.style.display = 'none';
  //     blinking = false;
  //   }
  // })
});