// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 < 0.9.0;

/*
data type = boolean, bytes, address, uint  
    boolean: true/false
    bytes: 1 ~ 32Byte까지 저장가능  ex)bytes4
    address: 지갑의 계좌번호, 20Byte(숫자40개)
    uint: unsigned integer
reference type = string, arrays, struct

*/

contract lec2{
    bool public b = false;
    bool public b1 = !false;        //NOT, TRUE
    bool public b2 = false || true; //OR, TRUE
    bool public b3 = false == true; //Equal, FALSE
    bool public b4 = false && true; //AND, FALSE

    bytes4 public bt1 = 0x12345678;  //숫자 하나당 4bit, 4*8=32bit=4Byte
    bytes  public bt2 = "STRING";

    address public addr = 0xd8b934580fcE35a11B58C6D73aDeE468a2833fa8;

    uint256 public number = 123456;
}