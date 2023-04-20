// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 < 0.9.0;

/*
[접근 제한자(4)]
:public, external, private, internal
    1.public:   외부 O, 내부 O
    2.external: 외부 O, 내부 X
    3.private:  외부 X, 내부 O, 상속 X
    4.internal: 외부 X, 내부 O, 상속 O
*/

contract lec5{
    uint256 public a1 = 5;
    uint256 private a2 = 5;
    //deploy시, a2버튼은 존재하지 않음
    //SC code 내부에서만 접근,수정 가능, 배포(외부)=X
}

contract public_example1{
    uint256 public a = 3;

    function changeA1(uint256 _value) public{
        a = _value;
    }
    function get_a() public view returns(uint256){
        return a;
    }
}

contract public_example2{
    public_example1 instance = new public_example1();

    function changeA2(uint256 _value) public{
        instance.changeA1(_value);
    }
    function use_public_example1_a() view public returns(uint256){
        return instance.get_a();
    }
}