// SPDX-License-Identifier: Unlicense
pragma solidity >=0.8.0;

import {RefractivityType} from "./Palette.sol";
import {MoteType} from "./Motes.sol";
import {EyeType} from "./Eyes.sol";
import {CheekType} from "./Cheeks.sol";
import {MouthType} from "./Mouth.sol";
import {Glints} from "./Glints.sol";
import {Util} from "./Util.sol";

library Traits {
    /*//////////////////////////////////////////////////////////////
                                 TRAITS
    //////////////////////////////////////////////////////////////*/

    function getTraits(bytes32 _seed) internal pure returns (string memory) {
        string memory result = "[";

        result = string.concat(result, trait("Refractivity", getRefractivityTrait(_seed)));
        result = string.concat(result, ",", trait("Mote", getMoteTrait(_seed)));
        result = string.concat(result, ",", trait("Eyes", getEyeTrait(_seed)));
        result = string.concat(result, ",", trait("Mouth", getMouthTrait(_seed)));
        result = string.concat(result, ",", trait("Cheeks", getCheekTrait(_seed)));
        result = string.concat(result, ",", trait("Glints", getGlintTrait(_seed)));
        return string.concat(result, "]");
    }

    function trait(string memory _traitType, string memory _value) internal pure returns (string memory) {
        return string.concat("{", Util.keyValue("trait_type", _traitType), ",", Util.keyValue("value", _value), "}");
    }

    /*//////////////////////////////////////////////////////////////
                              REFRACTIVITY
    //////////////////////////////////////////////////////////////*/

    function getRefractivityTrait(bytes32 _seed) internal pure returns (string memory) {
        RefractivityType refractivityType = getRefractivityType(_seed);
        return refractivityType == RefractivityType.LIGHT ? "Light" : "Dark";
    }

    function getRefractivityType(bytes32 _seed) internal pure returns (RefractivityType) {
        uint256 refractivitySeed = uint256(keccak256(abi.encodePacked(_seed, "refractivity"))) % 100;

        if (refractivitySeed < 80) return RefractivityType.LIGHT;
        return RefractivityType.DARK;
    }

    /*//////////////////////////////////////////////////////////////
                                  GLINT
    //////////////////////////////////////////////////////////////*/

    function getMoteTrait(bytes32 _seed) internal pure returns (string memory) {
        MoteType moteType = getMoteType(_seed);
        if (moteType == MoteType.FLOATING) return "Floating";
        if (moteType == MoteType.RISING) return "Rising";
        if (moteType == MoteType.FALLING) return "Falling";
        return "None";
    }

    function getMoteType(bytes32 _seed) internal pure returns (MoteType) {
        uint256 moteTypeSeed = uint256(keccak256(abi.encodePacked(_seed, "moteType"))) % 100;

        if (moteTypeSeed % 100 < 20) return MoteType.FLOATING;
        if (moteTypeSeed % 100 < 35) return MoteType.RISING;
        if (moteTypeSeed % 100 < 40) return MoteType.FALLING;
        return MoteType.NONE;
    }

    /*//////////////////////////////////////////////////////////////
                                   EYE
    //////////////////////////////////////////////////////////////*/

    function getEyeTrait(bytes32 _seed) internal pure returns (string memory) {
        EyeType eyeType = getEyeType(_seed);
        if (eyeType == EyeType.OPEN) return "Open";
        if (eyeType == EyeType.SMILEY) return "Smiley";
        if (eyeType == EyeType.WINK) return "Wink";
        if (eyeType == EyeType.SLEEPY) return "Sleepy";
        if (eyeType == EyeType.CLOVER) return "Clover";
        if (eyeType == EyeType.DIZZY) return "Dizzy";
        if (eyeType == EyeType.HEART) return "Heart";
        if (eyeType == EyeType.WINCE) return "Wince";
        if (eyeType == EyeType.CYCLOPS) return "Cyclops";
        return "Star";
    }

    function getEyeType(bytes32 _seed) internal pure returns (EyeType) {
        uint256 eyeSeed = uint256(keccak256(abi.encodePacked(_seed, "eye"))) % 100;

        if (eyeSeed % 100 < 25) return EyeType.OPEN;
        if (eyeSeed % 100 < 50) return EyeType.SMILEY;
        if (eyeSeed % 100 < 65) return EyeType.WINK;
        if (eyeSeed % 100 < 75) return EyeType.SLEEPY;
        if (eyeSeed % 100 < 83) return EyeType.CLOVER;
        if (eyeSeed % 100 < 89) return EyeType.DIZZY;
        if (eyeSeed % 100 < 94) return EyeType.HEART;
        if (eyeSeed % 100 < 97) return EyeType.WINCE;
        if (eyeSeed % 100 < 99) return EyeType.CYCLOPS;
        return EyeType.STAR;
    }

    /*//////////////////////////////////////////////////////////////
                                  MOUTH
    //////////////////////////////////////////////////////////////*/

    function getMouthTrait(bytes32 _seed) internal pure returns (string memory) {
        MouthType mouthType = getMouthType(_seed);
        if (mouthType == MouthType.SMILE) return "Smile";
        if (mouthType == MouthType.MEDIUM_SMILE) return "Medium Smile";
        if (mouthType == MouthType.SMALL_SMILE) return "Small Smile";
        if (mouthType == MouthType.FLAT) return "Flat";
        if (mouthType == MouthType.FROWN) return "Frown";
        if (mouthType == MouthType.GRIN) return "Grin";
        return "Smooch";
    }

    function getMouthType(bytes32 _seed) internal pure returns (MouthType) {
        uint256 mouthTypeSeed = uint256(keccak256(abi.encodePacked(_seed, "mouthType"))) % 100;

        if (mouthTypeSeed % 100 < 30) return MouthType.SMILE;
        if (mouthTypeSeed % 100 < 60) return MouthType.MEDIUM_SMILE;
        if (mouthTypeSeed % 100 < 80) return MouthType.SMALL_SMILE;
        if (mouthTypeSeed % 100 < 90) return MouthType.FLAT;
        if (mouthTypeSeed % 100 < 94) return MouthType.FROWN;
        if (mouthTypeSeed % 100 < 97) return MouthType.GRIN;
        if (mouthTypeSeed % 100 < 99) return MouthType.SMOOCH;
        return MouthType.SMIRK;
    }

    /*//////////////////////////////////////////////////////////////
                                 CHEEKS
    //////////////////////////////////////////////////////////////*/

    function getCheekTrait(bytes32 _seed) internal pure returns (string memory) {
        CheekType cheekType = getCheekType(_seed);
        if (cheekType == CheekType.NONE) return "None";
        if (cheekType == CheekType.CIRCULAR) return "Circular";
        return "Freckles";
    }

    function getCheekType(bytes32 _seed) internal pure returns (CheekType) {
        uint256 cheeksSeed = uint256(keccak256(abi.encodePacked(_seed, "cheeks"))) % 100;

        if (cheeksSeed % 100 < 70) return CheekType.NONE;
        if (cheeksSeed % 100 < 95) return CheekType.CIRCULAR;
        return CheekType.FRECKLES;
    }

    /*//////////////////////////////////////////////////////////////
                                  MOTES
    //////////////////////////////////////////////////////////////*/

    function getGlintTrait(bytes32 _seed) internal pure returns (string memory) {
        uint256 glintCount = getGlintCount(_seed);
        return Util.uint256ToString(glintCount);
    }

    function getGlintCount(bytes32 _seed) internal pure returns (uint256) {
        uint256 glintSeed = uint256(keccak256(abi.encodePacked(_seed, "glint"))) % 100;

        if (glintSeed % 100 < 1) return 3;
        if (glintSeed % 100 < 5) return 2;
        if (glintSeed % 100 < 35) return 1;
        return 0;
    }
}
