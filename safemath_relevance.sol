// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.7.0;

library SafeMath {
  function mul(int8 a, int8 b) internal pure returns (int8 c) {
    if (a == 0) {
      return 0;
    }
    c = a * b;
    assert(c / a == b);
    return c;
  }

  function div(int8 a, int8 b) internal pure returns (int8) {
    return a / b;
  }

  function sub(int8 a, int8 b) internal pure returns (int8) {
    assert(b <= a);
    return a - b;
  }

  function add(int8 a, int8 b) internal pure returns (int8 c) {
    c = a + b;
    assert(c >= a);
    return c;
  }
}

contract SafeMathRelevance {
    using SafeMath for int8;
    
    /*
    *   Returns the maximum range of int8 datatype
    */
    function maxRangeInt8() public pure returns(int8) {
        return type(int8).max;
    }
    
    /*
    *   Returns the minimum range of int8 datatype
    */
    function minRangeInt8() public pure returns(int8) {
        return type(int8).min;
    }
    
    
    /*
    *   Addition of two numbers with default Math's + operator
    */
    function addDefault(int8 a, int8 b) public pure returns(int8) {
        return a + b;
    }
    
    /*
    *   Addition of two numbers using SafeMath
    */
    function addSafeMath(int8 a, int8 b) public pure returns(int8) {
        return a.add(b);
    }
    
    
    /*
    *   Subtraction of two numbers with default Math's - operator
    */
    function subDefault(int8 a, int8 b) public pure returns(int8) {
        return a - b;
    }
    
    /*
    *   Subtraction of two numbers using SafeMath
    */
    function subSafeMath(int8 a, int8 b) public pure returns(int8) {
        return a.sub(b);
    }
    
    
    /*
    *   Multiplication of two numbers with default Math's * operator
    */
    function mulDefault(int8 a, int8 b) public pure returns(int8) {
        return a * b;
    }
    
    /*
    *   Multiplication of two numbers using SafeMath
    */
    function mulSafeMath(int8 a, int8 b) public pure returns(int8) {
        return a.mul(b);
    }
    
    
    /*
    *   Division of two numbers with default Math's / operator
    */
    function divDefault(int8 a, int8 b) public pure returns(int8) {
        return a * b;
    }
    
    /*
    *   Division of two numbers with SafeMath
    */
    function divSafeMath(int8 a, int8 b) public pure returns(int8) {
        return a * b;
    }
    
    
    
    
    
    
    
}
