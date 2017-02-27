const input = document.querySelector('input');
const p input = document.querySelector('p.description');
const button = document.querySelector('button');

button.addEventListener('click', () => {
  p.innerHTML = input.value + ':';
})
