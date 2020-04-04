let btn = document.getElementById('btn');

btn.addEventListener('mouseenter', function() {
  let style = document.createElement('style');
style.innerHTML =
  '#title {' +
  'transition: 1s;' +
  '-webkit-animation: glow 1s ease-in-out infinite alternate;' +
  '-moz-animation: glow 1s ease-in-out infinite alternate;' +
  'animation: glow 1s ease-in-out infinite alternate;' +
	'}';

let ref = document.querySelector('script');

ref.parentNode.insertBefore(style, ref);
});

btn.addEventListener('mouseleave', function () {
  let style2 = document.createElement('style');
  style2.innerHTML =
    '#title {' +
    'transition: 1s;' +
    '-webkit-animation: glow 0s ease-in-out infinite alternate;' +
    '-moz-animation: glow 0s ease-in-out infinite alternate;' +
    'animation: glow 0s ease-in-out infinite alternate;' +
    '}';
  
  let ref2 = document.querySelector('script');
  
  ref2.parentNode.insertBefore(style2, ref2);

  let style3 = document.createElement('style');
  style3.innerHTML =
    '#btn {' +
    'transition: 1s;' +
    '}';
  
  let ref3 = document.querySelector('script');
  
  ref3.parentNode.insertBefore(style3, ref3);
});