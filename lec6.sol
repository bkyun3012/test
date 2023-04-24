// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 < 0.9.0;

/*
[view/pure]
    1.view: 외부 읽기 O, 변경 X
    2.pure: 외부 읽기 X, 변경 X
    3. X:   변경 O
*/

// public: 외부에서 a를 받았지만 a의 값을 변경(예, 함수의 parameter)할 수는 없다.
contract lec6_1{
    uint256 public a = 1;

    function read_a() public view returns(uint256){
        return a + 2;
    }
}

contract lec6_2{
    uint256 public a = 1;

// pure: 함수 내부에서만 사용하도록...!
    function read_a(uint256 _value) public pure returns(uint256){
        uint256 b = 2;
        return  b + _value;
    }
}
