// SPDX-License-Identifier: Unlicense
pragma solidity >=0.8.0;

import {Palette} from "./Palette.sol";
import {Times} from "./Times.sol";
import {Points} from "./Points.sol";
import {Util} from "./Util.sol";
import {SVG} from "./SVG.sol";
import {Eyes} from "./Eyes.sol";
import {Mouth} from "./Mouth.sol";

library Face {
    function animateMotion(string memory _reverse) internal pure returns (string memory) {
        return
            string.concat(
                '<animateMotion dur="11s" ',
                _reverse,
                ' calcMode="linear" repeatCount="indefinite">',
                '<mpath href="#jitter-lg" />',
                "</animateMotion>"
            );
    }

    function render(bytes32 _seed) internal pure returns (string memory) {
        uint256 faceSeed = uint256(keccak256(abi.encodePacked(_seed, "face")));

        string memory reverse = faceSeed == 0 ? "keyPoints='1;0' keyTimes='0;1' " : "";
        faceSeed /= 2;
        string memory rotation = ["1", "2", "4", "6", "-1", "-2", "-4", "-6"][faceSeed % 8];

        string memory result = string.concat(
            "<g transform='translate(100,100) scale(0.5) rotate(",
            rotation,
            ")'>",
            SVG.rect("200", "200", "#00000000"),
            Eyes.render(_seed),
            Mouth.render(_seed),
            animateMotion(reverse),
            "</g>"
        );

        return result;
    }
}