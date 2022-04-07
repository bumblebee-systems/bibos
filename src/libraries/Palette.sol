// SPDX-License-Identifier: Unlicense
pragma solidity >=0.8.0;

library Palette {
    enum Refractivity {
        LIGHT,
        DARK
    }

    function getRefractivity(bytes32 _seed) internal pure returns (Refractivity) {
        uint256 refractivitySeed = uint256(keccak256(abi.encodePacked(_seed, "refractivity")));

        // 80%
        if (refractivitySeed % 100 < 80) return Refractivity.LIGHT;
        // 20%
        return Refractivity.DARK;
    }

    function getBodyFill(bytes32 _seed, uint256 _i) internal pure returns (string memory) {
        uint256 bodyFillValue = uint256(keccak256(abi.encodePacked(_seed, "bodyFill", _i)));

        if (getRefractivity(_seed) == Refractivity.LIGHT) return lightPalette(bodyFillValue);
        else return lightestPalette(bodyFillValue);
    }

    function getBackgroundFill(bytes32 _seed) internal pure returns (string memory) {
        uint256 backgroundFillValue = uint256(keccak256(abi.encodePacked(_seed, "backgroundFill")));

        if (getRefractivity(_seed) == Refractivity.LIGHT) return darkestPalette(backgroundFillValue);
        else return darkestPalette(backgroundFillValue);
    }

    function lightestPalette(uint256 _value) internal pure returns (string memory) {
        string[64] memory lightestPaletteValues = [
            "#baf7c7",
            "#d8edfd",
            "#fbf8d5",
            "#fdb0f8",
            "#ddfdef",
            "#d4c1fb",
            "#f8ffe6",
            "#fbf9e9",
            "#fafefb",
            "#f4f5b7",
            "#f8c9da",
            "#f6f7ba",
            "#bdfac0",
            "#fdd3fd",
            "#d7fef6",
            "#fafffc",
            "#fef7fb",
            "#ffeaae",
            "#fbb2ea",
            "#fee2ed",
            "#d7fef5",
            "#faccce",
            "#c3e2fe",
            "#f1fad1",
            "#fbacd8",
            "#fafffd",
            "#f3edfd",
            "#d8fbac",
            "#f6fdfe",
            "#fefbfb",
            "#d7f9a9",
            "#ebf0ff",
            "#ffffff",
            "#f4edfd",
            "#dbf8fb",
            "#c9f8d1",
            "#faa8d6",
            "#f9dced",
            "#c7fcbf",
            "#f1f7fe",
            "#ffeff3",
            "#ebd6fa",
            "#fed0a4",
            "#aec0f4",
            "#f8f2fd",
            "#f7b5d4",
            "#aef6ac",
            "#e9bef4",
            "#c4fdc6",
            "#e4feb9",
            "#dff5a8",
            "#b4e6f8",
            "#eec1f6",
            "#fac4bc",
            "#fbfee1",
            "#cefddf",
            "#feeadc",
            "#e8d1fa",
            "#f1fef0",
            "#f9fff4",
            "#f6d1c6",
            "#dbb1fc",
            "#f9d3c8",
            "#e6f5fe"
        ];
        return lightestPaletteValues[_value % 64];
    }

    function lightPalette(uint256 _value) internal pure returns (string memory) {
        string[64] memory lightPaletteValues = [
            "#f47b9d",
            "#c9f273",
            "#31f6e1",
            "#7c14d7",
            "#04bce6",
            "#13fbe7",
            "#62ee79",
            "#f7c84f",
            "#81b1fe",
            "#99d6f5",
            "#58f967",
            "#fbf974",
            "#fd91e0",
            "#f03d5c",
            "#50ed86",
            "#fa8d85",
            "#a933ff",
            "#fed75c",
            "#fc82be",
            "#e80c3d",
            "#0bb4d5",
            "#31ed9b",
            "#4931ec",
            "#2bf275",
            "#9eaefa",
            "#fca978",
            "#3114c2",
            "#d85f08",
            "#ef1aad",
            "#c634fe",
            "#c95412",
            "#cef467",
            "#ea411a",
            "#fb838f",
            "#3bca0d",
            "#6078fb",
            "#fbec65",
            "#19b3e6",
            "#e792fc",
            "#3dfa4e",
            "#fa84e7",
            "#6bff00",
            "#cba615",
            "#2a0dc9",
            "#cdf967",
            "#1ff443",
            "#2b76ee",
            "#b7f183",
            "#04d7c9",
            "#590ed8",
            "#fe9b95",
            "#cb3df5",
            "#95f995",
            "#48fef6",
            "#681bf8",
            "#40fc6b",
            "#097dd2",
            "#a28df2",
            "#5be00b",
            "#0cbde4",
            "#c476f4",
            "#bb15e5",
            "#6c4efd",
            "#79bd0f"
        ];
        return lightPaletteValues[_value % 64];
    }

    function darkPalette(uint256 _value) internal pure returns (string memory) {
        string[64] memory darkPaletteValues = [
            "#50071d",
            "#404305",
            "#555a1b",
            "#0c127e",
            "#552f43",
            "#223a31",
            "#671419",
            "#391155",
            "#193d3e",
            "#111b74",
            "#35374f",
            "#416614",
            "#0c6b83",
            "#461515",
            "#526416",
            "#2f1e76",
            "#300a52",
            "#0e384d",
            "#1b0c83",
            "#022f69",
            "#663f0a",
            "#073d5f",
            "#285761",
            "#8c0380",
            "#152319",
            "#1e1b27",
            "#081431",
            "#454d0f",
            "#0f2329",
            "#1a0150",
            "#3d0864",
            "#000a3d",
            "#0e4453",
            "#024550",
            "#333d2e",
            "#52142b",
            "#162c17",
            "#5b0a61",
            "#461c64",
            "#180e4e",
            "#786812",
            "#4a2e0d",
            "#68033a",
            "#3b2525",
            "#393d15",
            "#024b82",
            "#4e1259",
            "#190254",
            "#177861",
            "#4f187c",
            "#1c0a5c",
            "#202565",
            "#0d0958",
            "#210d63",
            "#203555",
            "#2f0731",
            "#043d7c",
            "#275672",
            "#102e14",
            "#1e5334",
            "#080a44",
            "#105e0d",
            "#343104",
            "#551b50"
        ];
        return darkPaletteValues[_value % 64];
    }

    function darkestPalette(uint256 _value) internal pure returns (string memory) {
        string[64] memory darkestPaletteValues = [
            "#020406",
            "#0d070a",
            "#0c090b",
            "#1c0315",
            "#230408",
            "#02210c",
            "#040202",
            "#040204",
            "#271d01",
            "#08000b",
            "#061411",
            "#060a0e",
            "#031604",
            "#060810",
            "#060215",
            "#050c17",
            "#141110",
            "#150115",
            "#0e0701",
            "#080809",
            "#0b0a03",
            "#22060a",
            "#071e05",
            "#100306",
            "#0f2106",
            "#020313",
            "#060107",
            "#090f1f",
            "#041b09",
            "#050207",
            "#180310",
            "#090205",
            "#022213",
            "#01041d",
            "#100202",
            "#0a0918",
            "#04060d",
            "#09041b",
            "#0a1e19",
            "#080408",
            "#05171d",
            "#020302",
            "#231204",
            "#11040f",
            "#0a150b",
            "#112201",
            "#0f0703",
            "#1d0518",
            "#16020c",
            "#130c09",
            "#060d03",
            "#140a01",
            "#0c0403",
            "#030a04",
            "#130a02",
            "#1a0c03",
            "#060802",
            "#100f08",
            "#140d10",
            "#050202",
            "#0a150e",
            "#090109",
            "#0e1615",
            "#100126"
        ];
        return darkestPaletteValues[_value % 64];
    }
}
