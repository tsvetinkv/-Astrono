// let signupForm = document.querySelector('.sign-up-form');
// let signinForm = document.querySelector('.sign-in-form');
// window.currentForm = signinForm;
// window.notCurrentForm = signupForm
function swap() {
    const signUpButtons = document.querySelectorAll('.signUp');
    const signInButtons = document.querySelectorAll('.signIn');
    const container = document.getElementById('container');
    signUpButtons.forEach(btn => {
        btn.addEventListener('click', () => {
            container.classList.add("right-panel-active");
            // currentForm = signupForm;
            // notCurrentForm = signinForm;
        });
    });

    signInButtons.forEach(btn => {
        btn.addEventListener('click', () => {
            container.classList.remove("right-panel-active");
        });
    });
}
window.onload = function () {
    swap();
}
