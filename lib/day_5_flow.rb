class Day5Flow
  DAY_5_FLOWS = {
    say_hello: { next: "get_hello_response" },
    say_hello_from_skip: { next: "get_intro_1_response" },
    say_hello_from_catch_up: { next: "get_intro_1_response" },
    get_hello_response: { next: "say_intro_1"},
    say_intro_1: { next: "get_intro_1_response" },
    get_intro_1_response: { next: "say_intro_2" },
    say_intro_2: { next: "get_intro_2_response" },
    get_intro_2_response: { next: "say_quiz_1" },
    say_quiz_1: { next: "get_quiz_1_response" },
    get_quiz_1_response: { next: "say_quiz_2"}
    say_quiz_2: { next: "get_quiz_2_response" },
    get_quiz_2_response: { next: "say_quiz_3"}
    say_quiz_3: { next: "get_quiz_3_response" },
    get_quiz_3_response: { next: "say_quiz_4"}
    say_quiz_4: { next: "get_quiz_4_response" },
    get_quiz_4_response: { next: "say_quiz_5"}
    say_quiz_5: { next: "get_quiz_5_response" },
    get_quiz_5_response: { next: "say_quiz_6"}
    say_quiz_6: { next: "get_quiz_6_response" },
    get_quiz_6_response: { next: "say_quiz_7"}
    say_quiz_7: { next: "get_quiz_7_response" },
    get_quiz_7_response: { next: "say_quiz_8"}
    say_quiz_8: { next: "get_quiz_8_response" },
    get_quiz_8_response: { next: "say_quiz_9"}
    say_quiz_9: { next: "get_quiz_9_response" },
    get_quiz_9_response: { next: "say_quiz_10"}
    say_quiz_10: { next: "get_quiz_10_response" },
    get_quiz_10_response: { next: "say_quiz_11"}
    say_quiz_11: { next: "get_quiz_11_response" },
    get_quiz_11_response: { next: "say_quiz_12"}
    say_quiz_12: { next: "get_quiz_12_response" },
    get_quiz_12_response: { next: "say_wrap_up_1"}
    say_wrap_up_1: { next: "get_wrap_up_1_response" },
    get_wrap_up_1_response: { next: "say_wrap_up_2"},
    say_wrap_up_2: { next: "get_wrap_up_2_response" },
    get_wrap_up_2_response: { next: "say_goodbye" }
  }
end