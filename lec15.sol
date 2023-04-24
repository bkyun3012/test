// SPDX_License-Idnetifier:MIT
pragma solidity >=0.7.0 < 0.9.0;

/*
[super]
: 상속, 함수를 overriding할 때 사용
원래의 함수를 가지고 옴

*/

contract Father{
    event FatherName(string name);
    function who() public virtual{
        emit FatherName("KimDaeHo");
    }
}

contract Son is Father{
    event SonName(string name);
    function who() public override{
       /*
        emit FatherName("KimDaeHo");   //override하는 함수의 내용이 너무 많을 경우
        emit SonName("KimJin");         상속 받는 field에서 다시 일일히 작성하기 너무 귀찮다.
        */                             //super.함수이름(); = 해당 함수의 내부 내용을 그대로 복붙
        super.who();
        emit SonName("KimJin");
    }
}