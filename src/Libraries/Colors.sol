// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.10;

library Colors {
  function getBodyLight(uint256 _index) internal pure returns (string memory) {
    string[64] memory bodyLight = [
      "#d5a8bf",
      "#d6cb8b",
      "#a4acfa",
      "#afebc8",
      "#d1deb3",
      "#97b690",
      "#dc96ff",
      "#b0fcc2",
      "#b9f66b",
      "#ae9ed8",
      "#afdaac",
      "#fef3c3",
      "#f4c14d",
      "#b86582",
      "#e9b1ed",
      "#a240dc",
      "#c0ecd9",
      "#cd456f",
      "#c7a1f6",
      "#9fc387",
      "#cbf9c9",
      "#dcc087",
      "#e8f9a5",
      "#efcbb3",
      "#d29bf1",
      "#bdb9f0",
      "#e47130",
      "#a7b4f6",
      "#dbc9c0",
      "#c8d342",
      "#ce93b8",
      "#782ff4",
      "#ebc2c8",
      "#e2c769",
      "#a4fd94",
      "#a3bb78",
      "#abf7af",
      "#ffd764",
      "#64b6dd",
      "#c89fc2",
      "#e5fa6b",
      "#d430df",
      "#ffddcc",
      "#cefcf2",
      "#a9d8a1",
      "#96f299",
      "#6ad3b2",
      "#fc9c6f",
      "#f6f8b9",
      "#d3def7",
      "#d743cf",
      "#d2caf5",
      "#e4c6f0",
      "#dcccf1",
      "#1fedc2",
      "#7c9ae2",
      "#d1c846",
      "#6bee9c",
      "#cef4ec",
      "#8cff1d",
      "#ca76ab",
      "#c8e0f0",
      "#87e7eb",
      "#cc8880"
    ];
    return bodyLight[_index % 64];
  }

  function getBodyDark(uint256 _index) internal pure returns (string memory) {
    string[64] memory bodyDark = [
      "#5b301c",
      "#5f0067",
      "#4a242d",
      "#0d89d9",
      "#97373c",
      "#ce257e",
      "#726a83",
      "#7f777a",
      "#642d08",
      "#028628",
      "#509e46",
      "#09e3d2",
      "#ec068e",
      "#c21577",
      "#31964b",
      "#a21f2d",
      "#6f9422",
      "#867c15",
      "#b1f703",
      "#17539f",
      "#19c012",
      "#c59231",
      "#331868",
      "#76832d",
      "#096e64",
      "#426a27",
      "#6f3749",
      "#39a98a",
      "#55a328",
      "#22aa0a",
      "#c7070a",
      "#17d014",
      "#23819d",
      "#428658",
      "#1a5684",
      "#c42714",
      "#4aa0a7",
      "#7b0cac",
      "#062496",
      "#1e5836",
      "#419b54",
      "#315280",
      "#703f21",
      "#7e1446",
      "#621145",
      "#470e9a",
      "#8a240a",
      "#0c9fa5",
      "#139731",
      "#0f792c",
      "#6e0fce",
      "#d41855",
      "#4509a4",
      "#43159f",
      "#738c58",
      "#8da60d",
      "#5800cc",
      "#1dc9a1",
      "#57168f",
      "#8333bf",
      "#ba08f5",
      "#676611",
      "#534e3d",
      "#9d4910"
    ];
    return bodyDark[_index % 64];
  }

  function getBgLight(uint256 _index) internal pure returns (string memory) {
    string[64] memory bgLight = [
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

    return bgLight[_index % 64];
  }

  function getBgDark(uint256 _index) internal pure returns (string memory) {
    string[64] memory bgDark = [
      "#f1f0fe",
      "#fde2e4",
      "#fafdfd",
      "#fdfaf6",
      "#feeff7",
      "#ebfcdf",
      "#fcf0fb",
      "#fff2fb",
      "#f1fef7",
      "#f8fffe",
      "#f2fef5",
      "#deddfa",
      "#ffdaed",
      "#f4f4ea",
      "#fedfe2",
      "#f3ebf3",
      "#e5f9f4",
      "#fffafe",
      "#def0f8",
      "#ecf9fc",
      "#efe7e9",
      "#eee7f7",
      "#f8fcfd",
      "#eafef1",
      "#fdfdf9",
      "#fef0eb",
      "#fef6f8",
      "#ebfffe",
      "#f8f8fd",
      "#f9e2ef",
      "#f8f8f1",
      "#fbf4e7",
      "#f8fbfa",
      "#dbfceb",
      "#e3e9fd",
      "#eef5ec",
      "#fef3f6",
      "#eefffb",
      "#f3f1ff",
      "#f6f7ef",
      "#ebf9f9",
      "#ece0fd",
      "#f5fff7",
      "#f7e5f8",
      "#fef6f5",
      "#f0f5fa",
      "#e4f9f0",
      "#f7fff5",
      "#eefcf4",
      "#dffcfd",
      "#e4e6f4",
      "#f9fff7",
      "#eeeaf0",
      "#f5e7eb",
      "#f6f6fb",
      "#fee8ec",
      "#fefafd",
      "#fff5f7",
      "#e7f2fb",
      "#fdf3ed",
      "#e9fedf",
      "#faf7ef",
      "#f6e2fd",
      "#e4e5fd"
    ];
    return bgDark[_index % 64];
  }
}
