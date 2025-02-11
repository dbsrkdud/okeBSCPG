const modalPrevBtn = document.querySelector('#modal_prev_btn');
const modalNextBtn = document.querySelector('#modal_next_btn');

let settingArr = ['Docker File', 'Deployment', 'Service', 'Ingress'];
let index = 0;

document.addEventListener('DOMContentLoaded', function(){

    // 설정정보 모달창 세팅
    setModalContent();

});


// 설정정보 모달창 세팅
setModalContent = function() {

    const modalTitle = document.querySelector('.modal-title');
    const modalBody = document.querySelector('.modal-body')

    modalTitle.innerText = settingArr[index];
    modalBody.innerText = settingArr[index];
}


// 모달 오른쪽 화살표 버튼 클릭
modalNextBtn.addEventListener('click', function() {

    index++;
    modalPrevBtn.disabled = false;

    if (index === settingArr.length - 1) {
        modalNextBtn.disabled = true;
    }

    setModalContent();

})

// 모달 왼쪽 화살표 버튼 클릭
modalPrevBtn.addEventListener('click', function() {

    index--;
    modalNextBtn.disabled = false;

    if (index === 0) {
        modalPrevBtn.disabled = true;
    }

    setModalContent();

})