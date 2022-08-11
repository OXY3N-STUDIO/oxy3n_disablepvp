var logo = document.getElementById("logo-container");

var nameText = document.getElementById("name");
var linkText = document.getElementById("link");

function sleep(ms) {
	return new Promise(resolve => setTimeout(resolve, ms));
}

window.addEventListener('message', (event) => {
    if (event.data.type === 'setup') {
    	nameText.innerHTML = event.data.nametext;
    	linkText.innerHTML = event.data.linktext;
    }
});

window.addEventListener('message', (event) => {
    if (event.data.type === 'showItem') {
    	logo.style.opacity = 0 + '%';
		 
    	if (event.data.item === 'logo') {
        	logo.style.opacity = 100 + '%';
        }
    }
});