const addButton = document.getElementById('252');
const updateButton = document.getElementById('253');
const deleteButton = document.getElementById('254');
const form = document.querySelector('form');
const closeButton = document.getElementById("closeButton");


addButton.addEventListener('click', () => {
    openForm();
    form.addEventListener('submit', (event) => {
        event.preventDefault();
        saveEevent(event.target);
    });

    form.reset();
});
updateButton.addEventListener('click', () => {
    openForm();
    form.addEventListener('submit', (event) => {
        event.preventDefault();
        saveEevent(event.target);
    });
    form.reset();
});
deleteButton.addEventListener('click', () => {
    openForm();
    form.addEventListener('submit', (event) => {
        event.preventDefault();
        deleteEevent(event.target);
    });
    form.reset();
});

function openForm() {
    if (popupContainer.style.display === "none" || popupContainer.style.display === "") {
        popupContainer.style.display = "block";
    } else {
        popupContainer.style.display = "none";
    }
    setTimeout(function () {
        closeButton.style.display = "block";
    }, 50);
    closeButton.addEventListener("click", function () {
        popupContainer.style.display = "none";
    });

}

function saveEevent(form) {
    const formData = new FormData(form);
    const idNumber = formData.get('id-number');
    const name = formData.get('name-string');
    const description = formData.get('description-string');
    const translatedName = formData.get('translatedName-string');
    const translatedDescription = formData.get('translatedDescription-string');
    const isMeteor = formData.get('isMeteor') === 'true';
    const startDate = new Date(formData.get('startDate'));
    const endDate = new Date(formData.get('endDate'));
    
    const saveEventFormData = {
        id: idNumber,
        name: name,
        description: description,
        translatedName: translatedName,
        translatedDescription: translatedDescription,
        isMeteor: isMeteor,
        startDate: startDate.toISOString(),
        endDate: endDate.toISOString()
    };

    fetch('https://localhost:7160/Events/SaveEvent', {
        method: 'POST',
        headers: {
            'accept': '*/*',
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(saveEventFormData)
    })
        .then(response => response.json())
        .then(() => {
            popupContainer.style.display = "none";
        })
        .catch(error => {
            console.error('Error saving event:', error);
        });
}

function deleteEevent(form) {
    const formData = new FormData(form);
    const idNumber = formData.get('id-number');
    const name = formData.get('name-string');
    const description = formData.get('description-string');
    const translatedName = formData.get('translatedName-string');
    const translatedDescription = formData.get('translatedDescription-string');
    const isMeteor = formData.get('isMeteor') === 'true';
    const startDate = new Date(formData.get('startDate'));
    const endDate = new Date(formData.get('endDate'));

    const deleteEventFormData = {
        id: idNumber,
        name: name,
        description: description,
        translatedName: translatedName,
        translatedDescription: translatedDescription,
        isMeteor: isMeteor,
        startDate: startDate.toISOString(),
        endDate: endDate.toISOString()
    };

    fetch('https://localhost:7160/Events/DeleteEvent', {
        method: 'DELETE',
        headers: {
            'accept': '*/*',
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(deleteEventFormData)
    })
        .then(response => response.json())
        .then(() => {
            popupContainer.style.display = "none";
        })
        .catch(error => {
            console.error('Error deleting event:', error);
        });
}
