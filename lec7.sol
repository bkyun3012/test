// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 < 0.9.0;

/*
[String]
: Solidity의 저장방식 4가지
    -> storage, memory, calldata, stack
    
    1.storage:  (전역)변수, 함수 저장, -> 영속적 저장, gas비용 증가
    2.memory:   parameter, return, reference type 저장
    3.calldata: external function의 parameter에서 사용
    4.stack:    EVM의 stack data관리할 때 사용

cf) string은 기본 data type이 아니다.
    -> reference type으로 들어가므로 memory를 붙여줘야 함.
*/

contract lec7{
    function get_string(string memory _str) public pure returns(string memory){
        return _str;
    }
    function get_uint(uint256 _int) public pure returns(uint256){
        return _int;
    }
}