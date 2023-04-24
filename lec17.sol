// SPDX_License-Idnetifier:MIT
pragma solidity >=0.7.0 < 0.9.0;

/*
[Mapping]
: key, value로 구성
    - key:
    - value:
특정한 key를 입력했을 때 정해진 value를 반환받음
*/

contract lec17{
    //mapping(key값 type, value값 type) public/private mapping명
    //length 값이 없음
    mapping(uint256=>uint256) private ageList;

    //setAgeList: _index(key)와 _age(value)를 입력하면 ageList에 저장됨
    function setAgeList(uint256 _index, uint256 _age) public{
        ageList[_index] = _age;
    }
    //getAge: key(_index)를 입력하면, value(_age)를 반환
    function getAge(uint256 _index) public view returns(uint256){
        return ageList[_index];
    }
}


