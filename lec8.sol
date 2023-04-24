// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 < 0.9.0;

/*
[instance]
: 다른 contract에 접근할 때 사용한다.
contract 단위의 상속(function scale)
*/

contract A{
    uint256 public a = 5;

    function change(uint256 _value) public{
        a = _value;
    }
}


contract B{
/*
    [instance 선언]
    A: 접근하려는 외부 contract의 이름
    instance_1: 내가 임의로 지정한 instance 이름
    = new: 정해진 문법
    A(); : 앞의 instance 이름과 동일

    밑에 다른 함수, 변수 선언할 때 보면 모두 괄호()를 뒤에 붙인다.
    - instance 선언:    ... = new A();
    - 함수 호출:        ...instance_1.change();
    - 변수 호출:        ...instance_1.a();
*/
    A instance_1 = new A();

    function get_A() public view returns(uint256){
        return instance_1.a();
        // instance_1.a 뒤에 ()를 붙여줘야 contract A의 변수a가 호출된다.
    }
    function change_A(uint256 _value) public{
        instance_1.change(_value);
    }
}