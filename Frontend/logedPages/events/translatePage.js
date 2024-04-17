translateButton(16, 2, null);

function translateTxt(translations) {
    const id9 = document.getElementById('9');
    const id10 = document.getElementById('10');
    const id12 = document.querySelectorAll(`.${CSS.escape("12")}`);
    const id14 = document.querySelectorAll(`.${CSS.escape("14")}`);
    const id15 = document.querySelectorAll(`.${CSS.escape("15")}`);
    const id17 = document.querySelectorAll(`.${CSS.escape("17")}`);
    const id19 = document.querySelectorAll(`.${CSS.escape("19")}`);
    const id249 = document.querySelectorAll(`.${CSS.escape("249")}`);
    const id250 = document.querySelectorAll(`.${CSS.escape("250")}`);
    const id251 = document.querySelectorAll(`.${CSS.escape("251")}`);
    const id201 = document.getElementById('201');
    const id202 = document.getElementById('202');
    const id205 = document.querySelectorAll('.tbtn');
    const id265 = document.querySelectorAll('.logoutbtn');
    const id20 = document.getElementById("20");
    const id21 = document.getElementById("21");
    const id252 = document.getElementById('252');
    const id253 = document.getElementById('253');
    const id254 = document.getElementById('254');
    const id255 = document.getElementById('255');
    const id256 = document.getElementById('256');
    const id257 = document.getElementById('257');
    const id258 = document.getElementById('258');
    const id259 = document.getElementById('259');
    const id260 = document.getElementById('260');
    const id261 = document.getElementById('261');
    const id262 = document.getElementById('262');
    const id263 = document.getElementById('263');
    const id264 = document.getElementById('264');


    const elements = [id9, id10, id201, id202, id20, id21, id252, id253, id254, id255, id256, id257, id258, id259, id260, id261, id262, id263, id264];

    translations.forEach(t => {
        for (let i = 0; i < elements.length; i++) {
            const element = elements[i];
            const elementId = parseInt(element.id, 10)
            if (t.id === elementId) {
                element.innerHTML = t.text;
            }
        }

        translateMultipleElements(id205, t, 205);
        translateMultipleElements(id12, t, 12);
        translateMultipleElements(id14, t, 14);
        translateMultipleElements(id15, t, 15);
        translateMultipleElements(id17, t, 17);
        translateMultipleElements(id19, t, 19);
        translateMultipleElements(id249, t, 249);
        translateMultipleElements(id250, t, 250);
        translateMultipleElements(id251, t, 251);
        translateMultipleElements(id265, t, 265);
    });
}