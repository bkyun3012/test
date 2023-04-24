// SPDX_License-Idnetifier:MIT
pragma solidity >=0.7.0 < 0.9.0;

/*
[상속의 순서]
: 복수의 contract를 상속받았을 때,
super.은 여러 contract 중 누구의 함수를 상속받을까???
*/

contract Father{
    event FatherName(string name);
    function who() public virtual{
        emit FatherName("KimDaeHo");
    }
}

contract Mother{
    event MotherName(string name);
    function who() public virtual{
        emit MotherName("LeeSol");
    }
}

contract Son is Father, Mother{
    function who() public override(Father, Mother){
        super.who();    //출력결과: Mother contract의 who()를 상속받음.
                        //is Father, Mother에서 Mother이 뒤에 있기 때문(최신)
    }
}