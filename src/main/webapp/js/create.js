// const itemObj = { 1 : 'GIT URL', 2 : 'BASE IMAGE', 3 : { SETTING : ['CPU', 'MEMORY'] } };
// const itemAnswerObj = { 1 : '', 2 : '', 3 : ''};

const gitPage = document.querySelector('#git_page');
const baseImagePage = document.querySelector('#base_image_page');
const settingPage = document.querySelector('#setting_page');

const homeBtn = document.querySelector('#home_btn');

const prevBtn = document.querySelector('#prev_btn');
const nextBtn = document.querySelector('#next_btn');

var index = 1;

document.addEventListener('DOMContentLoaded', function() {


});


// Next 버튼 클릭
nextBtn.addEventListener('click', function() {

    if (nextBtn.innerText === "Next") {
        index += 1;

        if (index === 2) {
            gitPage.style.display = 'none';
            baseImagePage.style.display = 'flex';
            settingPage.style.display = 'none'
        } else if (index === 3) {
            gitPage.style.display = 'none';
            baseImagePage.style.display = 'none';
            settingPage.style.display = 'flex';
            nextBtn.innerText = '완료';
            return;
        }
    } else {
        // 완료
    }

});


// Prev 버튼 클릭
prevBtn.addEventListener('click', function() {

    index -= 1;

    if (index < 1) {
        alert('처음입니다.');
    } else if (index === 2) {
        gitPage.style.display = 'none';
        baseImagePage.style.display = 'flex';
        settingPage.style.display = 'none'
        nextBtn.innerText = 'Next';
    } else if (index === 1) {
        gitPage.style.display = 'flex';
        baseImagePage.style.display = 'none';
        settingPage.style.display = 'none';
        nextBtn.innerText = 'Next';
    }

});


homeBtn.addEventListener('click', function() {
   location.href = 'index.do';
});