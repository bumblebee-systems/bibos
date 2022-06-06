// SPDX-License-Identifier: Unlicense
pragma solidity >=0.8.0;

library TimesUtil {
    uint256 constant length = 64;
    bytes public constant shortHex =
        hex"383933393734363837393631383536353837393637373331353932383031393539353530383333383430363233353838393735393939353233353639373338373136363230353137363034353031393436383331373231353936393836373737353232353233363232373231383037393239383939383535393830353439373731373936373837393339383136393331383336353633363834383733393631373636393030393137363837383437383331363538373231383832393636393932";

    function getShort2(uint256 _i) internal pure returns (string memory) {
        uint256 pos = _i * 3;
        bytes memory result = new bytes(4);
        result[0] = shortHex[pos];
        result[1] = ".";
        result[2] = shortHex[pos + 1];
        result[3] = shortHex[pos + 2];
        return string(result);
    }

    function short(uint256 _i) internal pure returns (string memory) {
        // all in format X.XX
        string[64] memory times = [
            "893",
            "974",
            "687",
            "961",
            "856",
            "587",
            "967",
            "731",
            "592",
            "801",
            "959",
            "550",
            "833",
            "840",
            "623",
            "588",
            "975",
            "999",
            "523",
            "569",
            "738",
            "716",
            "620",
            "517",
            "604",
            "501",
            "946",
            "831",
            "721",
            "596",
            "986",
            "777",
            "522",
            "523",
            "622",
            "721",
            "807",
            "929",
            "899",
            "855",
            "980",
            "549",
            "771",
            "796",
            "787",
            "939",
            "816",
            "931",
            "836",
            "563",
            "684",
            "873",
            "961",
            "766",
            "900",
            "917",
            "687",
            "847",
            "831",
            "658",
            "721",
            "882",
            "966",
            "992"
        ];
        return times[_i];
    }

    function getAllShort() internal pure returns (bytes memory) {
        // all in format X.XX

        uint256 i;
        bytes memory result;
        for (; i < 64; ) {
            result = bytes.concat(result, bytes(short(i)));
            ++i;
        }
        return result;
    }

    function long(uint256 _index) internal pure returns (string memory) {
        string[64] memory times = [
            "1120",
            "1465",
            "1252",
            "1361",
            "0869",
            "1492",
            "0991",
            "1056",
            "1315",
            "1234",
            "0851",
            "1205",
            "0847",
            "1347",
            "0984",
            "0888",
            "1342",
            "1023",
            "0790",
            "0794",
            "0771",
            "1206",
            "1352",
            "0846",
            "0966",
            "1178",
            "0760",
            "1248",
            "1200",
            "0923",
            "1277",
            "0780",
            "1125",
            "1440",
            "1161",
            "1352",
            "1246",
            "1083",
            "1202",
            "1425",
            "0952",
            "0997",
            "0997",
            "1006",
            "1206",
            "0890",
            "1171",
            "1340",
            "1196",
            "1226",
            "1335",
            "1163",
            "1083",
            "1303",
            "1211",
            "1466",
            "1130",
            "1162",
            "1096",
            "1054",
            "1408",
            "0791",
            "1464",
            "1366"
        ];
        return times[_index % 64];
    }

    function getAllLong() internal pure returns (bytes memory) {
        // all in format X.XX

        uint256 i;
        bytes memory result;
        for (; i < 64; ) {
            result = bytes.concat(result, bytes(long(i)));
            ++i;
        }
        return result;
    }
}
