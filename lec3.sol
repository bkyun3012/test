// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 < 0.9.0;

/*
[Ether, Gas]

1 ether = 10^9 gwei = 10^18 wei
gwei: gas의 단위

SC를 배포, 호출할 때 비용(gas)ㅂ 발생, excution cost
*/

contract lec3{
    uint256 public value1 = 1 ether;
    uint256 public value2 = 1 gwei;
    uint256 public value3 = 1 wei;
}