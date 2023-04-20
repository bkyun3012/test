// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 < 0.9.0;

/*
[function]
function 이름(parameter) public view returns(){

    1.parameter X, return X
    2.parameter O, return X
    3.parameter O, return O

*/

contract lec4{

    uint256 public a = 3;

    //1.parameter X, return X
    function changeA1() public{
        a = 5;
    }
    //2.parameter O, return X
    function changeA2(uint256 _value) public{
        a = _value;
    }
    //3.parameter O, return O
    function changeA3(uint256 _value) public returns(uint256){
        a = _value;
        return a;
    }
    //terminal(below) we can see changed value a, with 'decoded output'
}