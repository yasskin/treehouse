const toggleList = document.getElementById('toggleList');
const listDiv = document.querySelector('.list');
const descriptionInput = document.querySelector('input.description');
const descriptionP = document.querySelector('p.description');
const descriptionButton = document.querySelector('button.description');
const addItemInput = document.querySelector('input.addItemInput');
const addItemButton= document.querySelector('button.addItemButton');

toggleList.addEventListener('click', () => {
  if (listDiv.style.display == 'none') {
    toggleList.textContent = 'Hide list';
    listDiv.style.display = 'block';
  } else {
    toggleList.textContent = 'Show list';
    listDiv.style.display = 'none';
  }
});

descriptionButton.addEventListener('click', () => {
  descriptionP.innerHTML = descriptionInput.value + ':';
});

addItemButton.addEventListener('click', () => {
  let li = document.createElement('li');
  li.textContent = addItemInput.value;
});


Node.appendChild(childElement)

document.createElement('div');

Element.className

p.title = "List description";

textContent
innerHTML

let myHeading = document.querySelector('h1');

myHeading.textContent

myHeading.textContent = "New Heading"

let ul = document.querySelector('ul')

ul.innerHTML = "<li>red cabbage</li>"

attributes are properties of an element object

input has a type attribute of textContent

input.type

input.className

input.type = 'checkbox'

Element.style.prop
