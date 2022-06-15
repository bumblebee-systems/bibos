// SPDX-License-Identifier: Unlicense
pragma solidity >=0.8.0;

import {Util} from "src/libraries/Util.sol";

library Data {
    /*//////////////////////////////////////////////////////////////
                                 POINTS
    //////////////////////////////////////////////////////////////*/

    function bodyPoints(uint256 _i) external pure returns (string[2] memory) {
        uint256 pos = (_i % length) * 2;
        string memory x = Util.bytes1ToString(bodyPointsBytes[pos]);
        string memory y = Util.bytes1ToString(bodyPointsBytes[pos + 1]);
        return [x, y];
    }

    function glintPoints(uint256 _i) external pure returns (string[2] memory) {
        uint256 pos = (_i % length) * 2;
        string memory x = Util.bytes1ToString(glintsPointsBytes[pos]);
        string memory y = Util.bytes1ToString(glintsPointsBytes[pos + 1]);
        return [x, y];
    }

    function motePoints(uint256 _i) external pure returns (string[2][3] memory) {
        uint256 pos = (_i % length) * 6;
        string[2][3] memory result;
        uint256 i;
        for (; i < 3; ) {
            string memory x = Util.bytes1ToString(motePointsBytes[pos + 2 * i]);
            string memory y = Util.bytes1ToString(motePointsBytes[pos + 2 * i + 1]);
            result[i] = [x, y];
            ++i;
        }
        return result;
    }

    /*//////////////////////////////////////////////////////////////
                                  TIMES
    //////////////////////////////////////////////////////////////*/

    function shortTimes(uint256 _i) external pure returns (string memory) {
        uint256 val = uint256(uint8(shortTimesBytes[_i % length]));
        return string.concat(Util.uint256ToString(val / 10), ".", Util.uint256ToString(val % 10));
    }

    function longTimes(uint256 _i) external pure returns (string memory) {
        uint256 val = uint256(uint8(longTimesBytes[_i % length]));
        return string.concat(Util.uint256ToString(val / 10), ".", Util.uint256ToString(val % 10));
    }

    /*//////////////////////////////////////////////////////////////
                                 PALETTE
    //////////////////////////////////////////////////////////////*/

    function lightestPalette(uint256 _i) external pure returns (string memory) {
        return _getRGBString(lightestPaletteBytes, _i % length);
    }

    function lightPalette(uint256 _i) external pure returns (string memory) {
        return _getRGBString(lightPaletteBytes, _i % length);
    }

    function darkestPalette(uint256 _i) external pure returns (string memory) {
        return _getRGBString(darkestPaletteBytes, _i % length);
    }

    function _getRGBString(bytes memory _palette, uint256 _pos) internal pure returns (string memory result) {
        return
            string.concat(
                "#",
                Util.bytes1ToHex(_palette[3 * _pos]),
                Util.bytes1ToHex(_palette[3 * _pos + 1]),
                Util.bytes1ToHex(_palette[3 * _pos + 2])
            );
    }

    /*//////////////////////////////////////////////////////////////
                                  DEFS
    //////////////////////////////////////////////////////////////*/

    function defs() internal pure returns (string memory) {
        return
            string.concat(
                "<defs>",
                '<filter id="bibo-blur" x="-50%" y="-50%" width="200%" height="200%" color-interpolation-filters="sRGB">',
                '<feGaussianBlur stdDeviation="15" result="out" />',
                "</filter>",
                '<filter id="bibo-blur-sm" x="-50%" y="-50%" width="200%" height="200%" color-interpolation-filters="sRGB">',
                '<feGaussianBlur stdDeviation="5" result="out" />',
                "</filter>",
                '<path id="bibo-jitter-sm" d="M10.4485 2.98177C14.4091 4.48135 20 6.52342 20 2.98176C20 -0.548164 14.617 1.40118 10.4485 2.98177ZM10.4485 2.98177C10.4347 2.98703 10.4208 2.99226 10.4069 2.99751C6.23277 4.58084 1 6.5628 1 3.02114C1 -0.520506 6.48798 1.4822 10.4485 2.98177Z" />',
                '<path id="bibo-jitter-lg" d="M11.4431 4.92852C15.8206 9.82815 22 10.2396 22 4.92847C22 -0.382675 16.0504 -0.235806 11.4431 4.92852ZM11.4431 4.92852C11.4278 4.94569 11.4124 4.9628 11.3972 4.97994C6.78359 10.1532 1 10.4969 1 5.05714C1 -0.382663 7.06566 0.0289037 11.4431 4.92852Z" />',
                "</defs>"
            );
    }

    /*//////////////////////////////////////////////////////////////
                                  DATA
    //////////////////////////////////////////////////////////////*/

    uint256 constant length = 64;
    bytes constant bodyPointsBytes =
        hex"baa5aa77ae9687808197acaf777db9baa57c73978183a58189b887a7b5939bba99aba47f9c7c8aa49c71ae9685a1779984788aa1b6ba90af7aada9a6b1bba89695a2a3859da79db37b748cbca6707baca5ad93749b8d82b3aca27e75b5847c7d95b69b8b9b947d7071a98683a97db580aa90ad82b978977a83b187ae9da68298";
    bytes constant glintsPointsBytes =
        hex"8d78a6d585a7e3a6b075b2537aceb3d8b692d2a69cd4b79b919759838692637d989e7476a68c9694807dd75f86698b70bf6ac8ba4cb57cbb7a59e068aacfc4b38a969ca59a8d5e6a8bacaac2419c41879c96a0b1a26f80c866c696969589c6936c9871c48f8b9a4b7760714ab4dd92a188c7956165829b9589ab6c8899b2aacd";
    bytes constant motePointsBytes =
        hex"ad5e6bc1ce7f6bc196d2c1c1adce5e7f96d25e7fc16b6b6b965ac1c16bc16bc15ead5a96ce7fcead96d2965a5e7fce7fc16b5a9696d2ad5e6b6bc1c17f5e5ead7fcece7f5eadd296d296c1c17f5e6b6b5ead7f5eadcecead5a965a9696d26b6b965aadce5a96ceadadce6b6b965a5a967f5e5e7f7f5ecead7f5ec1c1ce7f7f5e7fce96d25e7f7f5e96d2d2965a96965aad5e6bc1ce7f6bc196d2c1c1adce5e7f96d25e7fc16b6b6b965ac1c16bc16bc15ead5a96ce7fcead96d2965a5e7fce7fc16b5a9696d2ad5e6b6bc1c17f5e5ead7fcece7f5eadd296d296c1c17f5e6b6b5ead7f5eadcecead5a965a9696d26b6b965aadce5a96ceadadce6b6b965a5a967f5e5e7f7f5ecead7f5ec1c1ce7f7f5e7fce96d25e7f7f5e96d2d2965a96965aad5e6bc1ce7f6bc196d2c1c1adce5e7f96d25e7fc16b6b6b965ac1c16bc16bc15ead5a96ce7fcead96d2965a5e7fce7fc16b5a9696d2ad5e6b6bc1c17f5e5ead7fcece7f5eadd296d296c1c17f5e6b6b5ead7f5eadcecead5a965a9696d26b6b";
    bytes public constant shortTimesBytes =
        hex"59614460553a60493b505f3753543e3a6163343849473e333c325e53483b624d34343e48505c595562364d4f4e5d515d53384457604c5a5b4454534148586063";
    bytes public constant longTimesBytes =
        hex"70927d8856956369837b55785486625886664f4f4d78875460754c7c785c7f4e709074877c6c788e5f63636478597586777a85746c82799271746d698c4f9288";
    bytes public constant lightPaletteBytes =
        hex"ff3333ff4633ff5933ff6c33ff7e33ff9133ffa433ffb733ffca33ffdd33fff033fcff33e9ff33d6ff33c3ff33b0ff339dff338aff3378ff3365ff3352ff333fff3333ff3a33ff4d33ff6033ff7233ff8533ff9833ffab33ffbe33ffd133ffe433fff733f5ff33e2ff33cfff33bcff33a9ff3396ff3383ff3371ff335eff334bff3338ff4133ff5433ff6733ff7933ff8c33ff9f33ffb233ffc533ffd833ffeb33fffd33ffff33eeff33dbff33c8ff33b5ff33a2ff338fff337dff336aff3357";
    bytes public constant lightestPaletteBytes =
        hex"ffb3b3ffbab3ffc1b3ffc8b3ffcfb3ffd6b3ffddb3ffe4b3ffebb3fff2b3fff9b3feffb3f7ffb3f0ffb3e8ffb3e1ffb3daffb3d3ffb3ccffb3c5ffb3beffb3b7ffb3b3ffb5b3ffbcb3ffc3b3ffcab3ffd1b3ffd8b3ffe0b3ffe7b3ffeeb3fff5b3fffcb3fbffb3f4ffb3edffb3e6ffb3dfffb3d8ffb3d1ffb3caffb3c3ffb3bbffb3b4ffb8b3ffbfb3ffc6b3ffcdb3ffd4b3ffdbb3ffe2b3ffe9b3fff0b3fff7b3fffeb3ffffb3f9ffb3f1ffb3eaffb3e3ffb3dcffb3d5ffb3ceffb3c7ffb3c0";
    bytes public constant darkestPaletteBytes =
        hex"060a06060d07061007061407061907051e07042306022805060a08060d0a06100c06140e061910051e1304231502281706090a060d0d061010061414061819051d1e04212302272806080a06090d060b10060d14060f1905111e04122302142806060a06060d06061006061406061905051e04042302022808060a09060d0b06100d06140f061911051e12042314022809060a0d060d1006101406141806191d051e2104232702280a06080d060a10060c14060e1906101e0513230415280217";
}
