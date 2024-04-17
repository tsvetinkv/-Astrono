translateButton(0, null, null);
function translateTxt(translations) {
    const id279 = document.getElementById('279');
    const id266 = document.querySelectorAll('.tbtn');
    const id267 = document.querySelectorAll('.signIn');
    const id268 = document.querySelectorAll('.username');
    const id269 = document.querySelectorAll('.password');
    const id270 = document.querySelectorAll('.signUp');
    const id271 = document.getElementById('271');
    const id272 = document.getElementById('272');
    const id273 = document.getElementById('273');
    const id274 = document.querySelectorAll(`.${CSS.escape("274")}`);
    const id275 = document.getElementById('275');
    const id276 = document.getElementById('276');
    const id277 = document.getElementById('277');
    const id278 = document.getElementById('emailRegister');
    const id292 = document.getElementById('292');

    let elements = [id271, id272, id273, id275, id276, id277, id279, id292];
    translations.forEach(t => {
        for (let i = 0; i < elements.length; i++) {
            const element = elements[i];
            const elementId = parseInt(element.id, 10)
            if (t.id === elementId) {
                element.innerHTML = t.text;
            }
            if (t.id === 278) {
                id278.placeholder = t.text;
            }
        }
        translateMultipleElements(id266, t, 266);
        translateMultipleElements(id267, t, 267);
        translateMultiplePlaceHolders(id268, t, 268);
        translateMultiplePlaceHolders(id269, t, 269);
        translateMultipleElements(id270, t, 270);
        translateMultipleElements(id274, t, 274);
    })
    createBElements(id270, id267, id271, id279);
}

function createBElements(id270, id267, id271, id279){
    let boldElement = document.createElement("b");
    let signInText = id270[0].innerHTML;
    boldElement.textContent = signInText;
    boldElement.classList.add("signUp");
    id271.appendChild(boldElement);
    let boldElement2 = document.createElement("b");
    boldElement2.classList.add("signIn");
    let logInText = id267[0].innerHTML;
    boldElement2.textContent = logInText;
    id279.appendChild(boldElement2);
    swap();
}


