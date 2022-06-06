// SPDX-License-Identifier: Unlicense
pragma solidity >=0.8.0;

library Times2 {
    uint256 constant length = 64;
    bytes public constant shortHex =
        hex"383933393734363837393631383536353837393637373331353932383031393539353530383333383430363233353838393735393939353233353639373338373136363230353137363034353031393436383331373231353936393836373737353232353233363232373231383037393239383939383535393830353439373731373936373837393339383136393331383336353633363834383733393631373636393030393137363837383437383331363538373231383832393636393932";
    bytes public constant longHex =
        hex"31313230313436353132353231333631303836393134393230393931313035363133313531323334303835313132303530383437313334373039383430383838313334323130323330373930303739343037373131323036313335323038343630393636313137383037363031323438313230303039323331323737303738303131323531343430313136313133353231323436313038333132303231343235303935323039393730393937313030363132303630383930313137313133343031313936313232363133333531313633313038333133303331323131313436363131333031313632313039363130353431343038303739313134363431333636";

    function short(uint256 _i) internal pure returns (string memory) {
        uint256 pos = _i * 3;
        bytes memory result = new bytes(4);
        result[0] = shortHex[pos];
        result[1] = ".";
        result[2] = shortHex[pos + 1];
        result[3] = shortHex[pos + 2];
        return string(result);
    }

    function long(uint256 _i) internal pure returns (string memory) {
        uint256 pos = _i * 4;
        bytes memory result = new bytes(5);
        result[0] = longHex[pos];
        result[1] = longHex[pos + 1];
        result[2] = ".";
        result[3] = longHex[pos + 2];
        result[4] = longHex[pos + 3];
        return string(result);
    }
}
