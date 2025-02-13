const dockerFilePage = document.querySelector('#docker_file_page');
const deploymentPage = document.querySelector('#deployment_page');
const servicePage = document.querySelector('#service_page');
const ingressPage = document.querySelector('#ingress_page');

const homeBtn = document.querySelector('#home_btn');

const buildBtn = document.querySelector('#build_btn');
const pushBtn = document.querySelector('#push_btn');
const deployCreateBtn = document.querySelector('#deploy_create_btn')
const serviceCreateBtn = document.querySelector('#service_create_btn');
const ingressCreateBtn = document.querySelector('#ingress_create_btn');

let buildBtnFlag = false;
let pushBtnFlag = false;
let deployCreateBtnFlag = false;
let serviceCreateBtnFlag = false;
let ingressCreateBtnFlag = false;


const prevBtn = document.querySelector('#prev_btn');
const nextBtn = document.querySelector('#next_btn');

let index = 1;

document.addEventListener('DOMContentLoaded', function() {


});


// build 버튼 클릭
buildBtn.addEventListener('click', function() {

    // 응답 success 일 때
    buildBtnFlag = true;
    pushBtn.disabled = false;

})

// push 버튼 클릭
pushBtn.addEventListener('click', function(){

    // 응답 success 일 때
    pushBtnFlag = true;

    if (buildBtnFlag && pushBtnFlag) {
        nextBtn.disabled = false;
    }

})

// deploy 생성 버튼 클릭
deployCreateBtn.addEventListener('click', function() {

    // success 일 때
    deployCreateBtnFlag = true;

    if (deployCreateBtnFlag) {
        nextBtn.disabled = false;
    }

})

// service 생성 버튼 클릭
serviceCreateBtn.addEventListener('click', function() {

    // success 일 때
    serviceCreateBtnFlag = true;

    if (serviceCreateBtnFlag) {
        nextBtn.disabled = false;
    }

})

// ingress 생성 버튼 클릭
ingressCreateBtn.addEventListener('click', function() {

    // success 일 때
    ingressCreateBtnFlag = true;

    if (ingressCreateBtnFlag) {
        nextBtn.disabled = false;
    }

})

// Next 버튼 클릭
nextBtn.addEventListener('click', function() {

    nextBtn.disabled = true;

    prevBtn.style.display = 'block';

    if (nextBtn.innerText === "다음") {
        index += 1;

        if (index === 2) {
            dockerFilePage.style.display = 'none';
            deploymentPage.style.display = 'block';
            servicePage.style.display = 'none';
            ingressPage.style.display = 'none';
        } else if (index === 3) {
            dockerFilePage.style.display = 'none';
            deploymentPage.style.display = 'none';
            servicePage.style.display = 'block';
            ingressPage.style.display = 'none';
        } else if (index == 4) {
            dockerFilePage.style.display = 'none';
            deploymentPage.style.display = 'none';
            servicePage.style.display = 'none';
            ingressPage.style.display = 'block';
            nextBtn.innerText = '완료';
        }
    } else {
        // 완료
    }

});

// Prev 버튼 클릭
prevBtn.addEventListener('click', function() {

    nextBtn.disabled = false;

    index -= 1;

    if (index < 1) {
        alert('처음입니다.');
    } else if (index === 3) {
        dockerFilePage.style.display = 'none';
        deploymentPage.style.display = 'none';
        servicePage.style.display = 'block';
        ingressPage.style.display = 'none';
        nextBtn.innerText = '다음';
    } else if (index === 2) {
        dockerFilePage.style.display = 'none';
        deploymentPage.style.display = 'block';
        servicePage.style.display = 'none';
        ingressPage.style.display = 'none';
        nextBtn.innerText = '다음';
    } else if (index === 1) {
        dockerFilePage.style.display = 'block';
        deploymentPage.style.display = 'none';
        servicePage.style.display = 'none';
        ingressPage.style.display = 'none';
        nextBtn.innerText = '다음';
        prevBtn.style.display = 'none';
    }

});


homeBtn.addEventListener('click', function() {
   location.href = 'main.do';
});