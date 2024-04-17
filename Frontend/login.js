const usernameInput = document.getElementById('usernameLogin');
const passInput = document.getElementById('passwordLogin');
const loginBtn = document.getElementById('loginBtn');

loginBtn.addEventListener("click", (e) => {
    e.preventDefault();

    const username = usernameInput.value;
    console.log(username);

    const password = passInput.value;
    const url = 'https://localhost:7160/User/login';
    const data = {
        username: username,
        password: password
    };

    const options = {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(data)
    };

    fetch(url, options)
        .then(response => {
            if (!response.ok) {
                throw new Error('Invalid response');
            }
            // Parse the response body as a raw string
            return response.text();
        })
        .then(body => {
            const jwtToken = body;
            const decoded = parseJwt(jwtToken);
            localStorage.setItem('jwtToken', decoded);
            window.location.href = "/logedPages/homePage/"
        })
        .catch(error => {
            console.error('Error:', error);
        });
});

function parseJwt(token) {
    var base64Url = token.split('.')[1];
    var base64 = base64Url.replace(/-/g, '+').replace(/_/g, '/');
    var jsonPayload = decodeURIComponent(window.atob(base64).split('').map(function (c) {
        return '%' + ('00' + c.charCodeAt(0).toString(16)).slice(-2);
    }).join(''));

    return JSON.parse(jsonPayload);
}