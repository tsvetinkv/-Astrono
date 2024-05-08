translateButton(0, null, null);
function translateTxt(translations) {
    const id279 = document.querySelectorAll(`.${CSS.escape("279")}`);
    const id266 = document.querySelectorAll('.tbtn');
    const id267 = document.querySelectorAll('.signIn');
    const id268 = document.querySelectorAll('.username');
    const id269 = document.querySelectorAll('.password');
    const id270 = document.querySelectorAll('.signUp');
    const id271 = document.querySelectorAll(`.${CSS.escape("271")}`);
    const id272 = document.getElementById('272');
    const id273 = document.getElementById('273');
    const id274 = document.querySelectorAll(`.${CSS.escape("274")}`);
    const id275 = document.getElementById('275');
    const id276 = document.getElementById('276');
    const id277 = document.querySelectorAll(`.${CSS.escape("277")}`);
    const id278 = document.querySelectorAll('.email');
    const id292 = document.querySelectorAll(`.${CSS.escape("292")}`);

    let elements = [id272, id273, id275, id276];
    translations.forEach(t => {
        for (let i = 0; i < elements.length; i++) {
            const element = elements[i];
            const elementId = parseInt(element.id, 10)
            if (t.id === elementId) {
                element.innerHTML = t.text;
            }
        }
        translateMultipleElements(id266, t, 266);
        translateMultipleElements(id267, t, 267);
        translateMultiplePlaceHolders(id268, t, 268);
        translateMultiplePlaceHolders(id269, t, 269);
        translateMultiplePlaceHolders(id278, t, 278);
        translateMultipleElements(id270, t, 270);
        translateMultipleElements(id271, t, 271);
        translateMultipleElements(id274, t, 274);
        translateMultipleElements(id277, t, 277);
        translateMultipleElements(id292, t, 292);
        translateMultipleElements(id279, t, 279);
    })
    createBElements(id270, id267, id271, id279);
}

function createBElements(id270, id267, id271, id279) {
    const signupForm = document.querySelector('.sign-up-form');
    const signinForm = document.querySelector('.sign-in-form');
    let currentForm = signinForm;
    let notCurrentForm = signupForm;

    let boldElement = document.createElement("b");
    let signInText = id270[0].innerHTML;
    boldElement.textContent = signInText;
    boldElement.classList.add("signUp");
    let boldElementClone = boldElement.cloneNode(true);
    id271[0].appendChild(boldElement);
    id271[1].appendChild(boldElementClone);

    boldElement.addEventListener("click", () => {
        if (document.documentElement.clientWidth < 1244) {
            signupForm.style.display = "block";
            signinForm.style.display = "none";
            currentForm = signupForm;
            notCurrentForm = signinForm;
        }else{
            currentForm = signupForm;
            notCurrentForm = signinForm;
        }
    });
    boldElementClone.addEventListener("click", () => {
        if (document.documentElement.clientWidth < 1244) {
            signupForm.style.display = "block";
            signinForm.style.display = "none";
            currentForm = signupForm;
            notCurrentForm = signinForm;
        }else{
            currentForm = signupForm;
            notCurrentForm = signinForm;
        }
    });
    let boldElement2 = document.createElement("b");
    boldElement2.classList.add("signIn");
    let logInText = id267[0].innerHTML;
    boldElement2.textContent = logInText;
    let boldElementClone2 = boldElement2.cloneNode(true);
    id279[0].appendChild(boldElement2);
    id279[1].appendChild(boldElementClone2);
    boldElement2.addEventListener("click", () => {
        if (document.documentElement.clientWidth < 1244) {
            signupForm.style.display = "none";
            signinForm.style.display = "block";
            currentForm = signinForm;
            notCurrentForm = signupForm;
        }else{
            currentForm = signinForm;
            notCurrentForm = signupForm;
        }
    });
    boldElementClone2.addEventListener("click", () => {
        if (document.documentElement.clientWidth < 1244) {
            signupForm.style.display = "none";
            signinForm.style.display = "block";
            currentForm = signinForm;
            notCurrentForm = signupForm;
        }else{
            currentForm = signinForm;
            notCurrentForm = signupForm;
        }
    });

    window.addEventListener("resize", () => {
        if (document.documentElement.clientWidth >= 1245) {
            signupForm.style.display = "none";
            signinForm.style.display = "none";
        }else{
            currentForm.style.display = "block";
            notCurrentForm.style.display = "none";
        }
    });

    swap();
}


