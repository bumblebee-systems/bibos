// SPDX-License-Identifier: Unlicense
pragma solidity >=0.8.0;

import { Color } from './Color.sol';

library Times {
  function short(bytes1 value) internal pure returns (string memory) {
    string[64] memory times = [
      '8.93',
      '9.74',
      '6.87',
      '9.61',
      '8.56',
      '5.87',
      '9.67',
      '7.31',
      '5.92',
      '8.01',
      '9.59',
      '5.50',
      '8.33',
      '8.40',
      '6.23',
      '5.88',
      '9.75',
      '9.99',
      '5.23',
      '5.69',
      '7.38',
      '7.16',
      '6.20',
      '5.17',
      '6.04',
      '5.01',
      '9.46',
      '8.31',
      '7.21',
      '5.96',
      '9.86',
      '7.77',
      '5.22',
      '5.23',
      '6.22',
      '7.21',
      '8.07',
      '9.29',
      '8.99',
      '8.55',
      '9.80',
      '5.49',
      '7.71',
      '7.96',
      '7.87',
      '9.39',
      '8.16',
      '9.31',
      '8.36',
      '5.63',
      '6.84',
      '8.73',
      '9.61',
      '7.66',
      '9.00',
      '9.17',
      '6.87',
      '8.47',
      '8.31',
      '6.58',
      '7.21',
      '8.82',
      '9.66',
      '9.92'
    ];
    return times[uint8(value) % 64];
  }

  function long(bytes1 value) internal pure returns (string memory) {
    string[64] memory times = [
      '11.20',
      '14.65',
      '12.52',
      '13.61',
      '8.69',
      '14.92',
      '9.91',
      '10.56',
      '13.15',
      '12.34',
      '8.51',
      '12.05',
      '8.47',
      '13.47',
      '9.84',
      '8.88',
      '13.42',
      '10.23',
      '7.90',
      '7.94',
      '7.71',
      '12.06',
      '13.52',
      '8.46',
      '9.66',
      '11.78',
      '7.60',
      '12.48',
      '12.00',
      '9.23',
      '12.77',
      '7.80',
      '11.25',
      '14.40',
      '11.61',
      '13.52',
      '12.46',
      '10.83',
      '12.02',
      '14.25',
      '9.52',
      '9.97',
      '9.97',
      '10.06',
      '12.06',
      '8.90',
      '11.71',
      '13.40',
      '11.96',
      '12.26',
      '13.35',
      '11.63',
      '10.83',
      '13.03',
      '12.11',
      '14.66',
      '11.30',
      '11.62',
      '10.96',
      '10.54',
      '14.08',
      '7.91',
      '14.64',
      '13.66'
    ];
    return times[uint8(value) % 64];
  }
}