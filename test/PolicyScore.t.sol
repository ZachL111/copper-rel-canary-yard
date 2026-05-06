// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "../src/PolicyScore.sol";

contract PolicyScoreTest {
    function test_case_1() public {
        PolicyScore scorer = new PolicyScore();
        PolicyScore.Signal memory signal = PolicyScore.Signal(81, 104, 17, 9, 8);
        require(scorer.score(signal) == 211, "score mismatch");
        require(scorer.accepted(signal) == true, "decision mismatch");
    }
    function test_case_2() public {
        PolicyScore scorer = new PolicyScore();
        PolicyScore.Signal memory signal = PolicyScore.Signal(65, 78, 18, 23, 13);
        require(scorer.score(signal) == 96, "score mismatch");
        require(scorer.accepted(signal) == false, "decision mismatch");
    }
    function test_case_3() public {
        PolicyScore scorer = new PolicyScore();
        PolicyScore.Signal memory signal = PolicyScore.Signal(104, 89, 26, 9, 8);
        require(scorer.score(signal) == 224, "score mismatch");
        require(scorer.accepted(signal) == true, "decision mismatch");
    }
}
