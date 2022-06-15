// SPDX-License-Identifier: Unlicense
pragma solidity >=0.8.0;

import {Test} from "forge-std/Test.sol";
import {PointsUtil} from "dev/PointsUtil.sol";
import {Data} from "libraries/Data.sol";
import {PointsUncompressed} from "dev/PointsUncompressed.sol";
import {Palette} from "../libraries/Palette.sol";

contract PaletteTest is Test {
    function setUp() public {}

    function testLightestPalette(uint8 _i) public {
        vm.assume(_i < 64);
        string memory palette1 = Palette.lightestPalette(_i);
        string memory palette2 = Data.lightestPalette(_i);

        assertEq(palette1, palette2);
    }

    function testLightPalette(uint8 _i) public {
        vm.assume(_i < 64);
        string memory palette1 = Palette.lightPalette(_i);
        string memory palette2 = Data.lightPalette(_i);

        assertEq(palette1, palette2);
    }

    function testDarkestPalette(uint8 _i) public {
        vm.assume(_i < 64);
        string memory palette1 = Palette.darkestPalette(_i);
        string memory palette2 = Data.darkestPalette(_i);

        assertEq(palette1, palette2);
    }
}
