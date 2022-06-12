// SPDX-License-Identifier: Unlicense
pragma solidity >=0.8.0;

library PointsUncompressed {
    uint256 constant length = 64;

    function body(uint256 _index) external pure returns (string[2] memory) {
        string[2][64] memory bodyPoints = [
            ["186", "165"],
            ["170", "119"],
            ["174", "150"],
            ["135", "128"],
            ["129", "151"],
            ["172", "175"],
            ["119", "125"],
            ["185", "186"],
            ["165", "124"],
            ["115", "151"],
            ["129", "131"],
            ["165", "129"],
            ["137", "184"],
            ["135", "167"],
            ["181", "147"],
            ["155", "186"],
            ["153", "171"],
            ["164", "127"],
            ["156", "124"],
            ["138", "164"],
            ["156", "113"],
            ["174", "150"],
            ["133", "161"],
            ["119", "153"],
            ["132", "120"],
            ["138", "161"],
            ["182", "186"],
            ["144", "175"],
            ["122", "173"],
            ["169", "166"],
            ["177", "187"],
            ["168", "150"],
            ["149", "162"],
            ["163", "133"],
            ["157", "167"],
            ["157", "179"],
            ["123", "116"],
            ["140", "188"],
            ["166", "112"],
            ["123", "172"],
            ["165", "173"],
            ["147", "116"],
            ["155", "141"],
            ["130", "179"],
            ["172", "162"],
            ["126", "117"],
            ["181", "132"],
            ["124", "125"],
            ["149", "182"],
            ["155", "139"],
            ["155", "148"],
            ["125", "112"],
            ["113", "169"],
            ["134", "131"],
            ["169", "125"],
            ["181", "128"],
            ["170", "144"],
            ["173", "130"],
            ["185", "120"],
            ["151", "122"],
            ["131", "177"],
            ["135", "174"],
            ["157", "166"],
            ["130", "152"]
        ];

        return bodyPoints[_index % 64];
    }

    function glint(uint256 _index) external pure returns (string[2] memory) {
        string[2][64] memory glintPoints = [
            ["141.97", "120.81"],
            ["166.77", "213.19"],
            ["133.87", "167.72"],
            ["227.04", "166.45"],
            ["176.30", "117.38"],
            ["178.43", "083.90"],
            ["122.77", "206.04"],
            ["179.44", "216.81"],
            ["182.62", "146.82"],
            ["210.22", "166.64"],
            ["156.13", "212.33"],
            ["183.44", "155.04"],
            ["145.18", "151.46"],
            ["089.67", "131.54"],
            ["134.47", "146.49"],
            ["099.86", "125.76"],
            ["152.43", "158.62"],
            ["116.32", "118.64"],
            ["166.37", "140.65"],
            ["150.65", "148.21"],
            ["128.58", "125.67"],
            ["215.82", "095.36"],
            ["134.60", "105.84"],
            ["139.05", "112.04"],
            ["191.75", "106.14"],
            ["200.53", "186.69"],
            ["076.38", "181.03"],
            ["124.27", "187.50"],
            ["122.63", "089.05"],
            ["224.13", "104.17"],
            ["170.06", "207.14"],
            ["196.92", "179.39"],
            ["138.54", "150.31"],
            ["156.68", "165.68"],
            ["154.76", "141.72"],
            ["094.42", "106.96"],
            ["139.77", "172.85"],
            ["170.03", "194.52"],
            ["065.31", "156.30"],
            ["065.13", "135.77"],
            ["156.57", "150.04"],
            ["160.12", "177.34"],
            ["162.66", "111.69"],
            ["128.68", "200.95"],
            ["102.78", "198.74"],
            ["150.68", "150.24"],
            ["149.08", "137.24"],
            ["198.75", "147.39"],
            ["108.68", "152.46"],
            ["113.95", "196.60"],
            ["143.41", "139.07"],
            ["154.94", "075.32"],
            ["119.59", "096.71"],
            ["113.19", "074.02"],
            ["180.02", "221.10"],
            ["146.86", "161.13"],
            ["136.20", "199.87"],
            ["149.09", "097.94"],
            ["101.89", "130.92"],
            ["155.35", "149.09"],
            ["137.16", "171.87"],
            ["108.86", "136.81"],
            ["153.63", "178.81"],
            ["170.82", "205.75"]
        ];
        return glintPoints[_index % 64];
    }

    function motes(uint256 _index) external pure returns (string[2][3] memory) {
        string[2][3][24] memory motePoints = [
            [["173", "094"], ["107", "193"], ["206", "127"]],
            [["107", "193"], ["150", "210"], ["193", "193"]],
            [["173", "206"], ["094", "127"], ["150", "210"]],
            [["094", "127"], ["193", "107"], ["107", "107"]],
            [["150", "090"], ["193", "193"], ["107", "193"]],
            [["107", "193"], ["094", "173"], ["090", "150"]],
            [["206", "127"], ["206", "173"], ["150", "210"]],
            [["150", "090"], ["094", "127"], ["206", "127"]],
            [["193", "107"], ["090", "150"], ["150", "210"]],
            [["173", "094"], ["107", "107"], ["193", "193"]],
            [["127", "094"], ["094", "173"], ["127", "206"]],
            [["206", "127"], ["094", "173"], ["210", "150"]],
            [["210", "150"], ["193", "193"], ["127", "094"]],
            [["107", "107"], ["094", "173"], ["127", "094"]],
            [["173", "206"], ["206", "173"], ["090", "150"]],
            [["090", "150"], ["150", "210"], ["107", "107"]],
            [["150", "090"], ["173", "206"], ["090", "150"]],
            [["206", "173"], ["173", "206"], ["107", "107"]],
            [["150", "090"], ["090", "150"], ["127", "094"]],
            [["094", "127"], ["127", "094"], ["206", "173"]],
            [["127", "094"], ["193", "193"], ["206", "127"]],
            [["127", "094"], ["127", "206"], ["150", "210"]],
            [["094", "127"], ["127", "094"], ["150", "210"]],
            [["210", "150"], ["090", "150"], ["150", "090"]]
        ];
        return motePoints[_index % 24];
    }
}
