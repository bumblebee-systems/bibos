// SPDX-License-Identifier: Unlicense
pragma solidity >=0.8.0;

import {Palette} from "./Palette.sol";
import {Data} from "./Data.sol";
import {Util} from "./Util.sol";
import {SVG} from "./SVG.sol";
import {Traits} from "./Traits.sol";

enum GlintType {
    NONE,
    FLOATING,
    RISING,
    FALLING
}

library Glints {
    uint256 constant GLINT_COUNT = 16;

    /*//////////////////////////////////////////////////////////////
                                 RENDER
    //////////////////////////////////////////////////////////////*/

    function render(bytes32 _seed) internal pure returns (string memory) {
        string memory result;

        string memory mixMode = "lighten";
        string memory fill = "white";

        GlintType glintType = Traits.glintType(_seed);
        if (glintType == GlintType.NONE) return "";

        for (uint8 i = 0; i < GLINT_COUNT; i++) {
            uint256 glintSeed = uint256(keccak256(abi.encodePacked(_seed, "glint", i)));

            string memory dur = Data.longTimes(glintSeed);
            glintSeed = glintSeed / Data.length;
            string[2] memory coords = Data.glintPoints(glintSeed);
            glintSeed = glintSeed / Data.length;
            string memory radius = glintSeed % 2 == 0 ? "1" : "2";
            glintSeed = glintSeed / 2;
            string memory opacity = Palette.opacity(glintSeed);
            glintSeed /= Palette.opacityLength;

            if (glintType == GlintType.FLOATING) {
                string memory reverse = glintSeed % 2 == 0 ? "keyPoints='1;0' keyTimes='0;1'" : "";
                result = _addFloating(result, radius, coords, mixMode, fill, opacity, dur, reverse);
            } else if (glintType == GlintType.RISING)
                result = _addRising(result, radius, coords, mixMode, fill, opacity, dur);
            else if (glintType == GlintType.FALLING) {
                result = _addFalling(result, radius, coords, mixMode, fill, opacity, dur);
            }
        }

        return string.concat("<g>", result, "</g>");
    }

    /*//////////////////////////////////////////////////////////////
                                INTERNAL
    //////////////////////////////////////////////////////////////*/

    function _addRising(
        string memory _result,
        string memory _radius,
        string[2] memory _coords,
        string memory _mixMode,
        string memory _fill,
        string memory _opacity,
        string memory _dur
    ) internal pure returns (string memory) {
        return
            string.concat(
                _result,
                '<g transform="translate(0,25)">',
                SVG.openCircle(_radius, _coords, _mixMode, _fill, _opacity),
                _animateTransform(_dur, "-100"),
                _animate(_dur),
                SVG.closeCircle(),
                "</g>"
            );
    }

    function _addFloating(
        string memory _result,
        string memory _radius,
        string[2] memory _coords,
        string memory _mixMode,
        string memory _fill,
        string memory _opacity,
        string memory _dur,
        string memory _reverse
    ) internal pure returns (string memory) {
        return
            string.concat(
                _result,
                SVG.openCircle(_radius, _coords, _mixMode, _fill, _opacity),
                SVG.animateMotion(_reverse, _dur, "paced", '<mpath xlink:href="#bibo-jitter-sm"/>'),
                SVG.closeCircle()
            );
    }

    function _addFalling(
        string memory _result,
        string memory _radius,
        string[2] memory _coords,
        string memory _mixMode,
        string memory _fill,
        string memory _opacity,
        string memory _dur
    ) internal pure returns (string memory) {
        return
            string.concat(
                _result,
                '<g transform="translate(0,-25)">',
                SVG.openCircle(_radius, _coords, _mixMode, _fill, _opacity),
                _animateTransform(_dur, "100"),
                _animate(_dur),
                SVG.closeCircle(),
                "</g>"
            );
    }

    function _animate(string memory _dur) internal pure returns (string memory) {
        return
            string.concat(
                "<animate ",
                'attributeName="opacity" ',
                'values="0;1;0" ',
                "dur=",
                Util.quote(_dur),
                'repeatCount="indefinite" ',
                "/>"
            );
    }

    function _animateTransform(string memory _dur, string memory _to) internal pure returns (string memory) {
        return
            string.concat(
                "<animateTransform ",
                'attributeName="transform" ',
                "dur=",
                Util.quote(_dur),
                'repeatCount="indefinite" ',
                'type="translate" ',
                'additive="sum" ',
                'from="0 0" ',
                'to="0 ',
                _to,
                '" ',
                "/>"
            );
    }
}
