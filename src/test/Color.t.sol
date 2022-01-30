// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.10;

import 'ds-test/test.sol';
import '../Libraries/Color.sol';

contract ColorTest is DSTest {
  bytes1 constant BYTES_1_SIXTY_THREE = bytes1(uint8(63));

  function setUp() public {}

  function testBodyLight() public {
    assertEq(Color.bodyLight(0), '#d5a8bf');
    assertEq(Color.bodyLight(BYTES_1_SIXTY_THREE), '#cc8880');
  }

  function testBodyDark() public {
    assertEq(Color.bodyDark(0), '#5b301c');
    assertEq(Color.bodyDark(BYTES_1_SIXTY_THREE), '#9d4910');
  }

  function testBgLight() public {
    assertEq(Color.bgLight(0), '#020406');
    assertEq(Color.bgLight(BYTES_1_SIXTY_THREE), '#100126');
  }

  function testBgDark() public {
    assertEq(Color.bgDark(0), '#f1f0fe');
    assertEq(Color.bgDark(BYTES_1_SIXTY_THREE), '#e4e5fd');
  }
}
