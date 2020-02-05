class Day8Flow
  DAY_8_FLOWS = {
    say_hello: { next: "get_hello_response" },
    say_hello_from_skip: { next: "" },
    say_hello_from_catch_up: { next: "" },
    get_hello_response: { next: "say_intro_1" },
    say_intro_1: { next: "get_intro_1_response" },
    get_intro_1_response: {
      next: {
        "Pretty good!" => "say_lesson_1_from_pretty_good",
        "So-so" => "say_animal_1",
        "Not so great" => "say_panda_1"
      }
    },
    say_animal_1: { next: "get_animal_1_response" },
    get_animal_1_response: {
      next: {
        "Maybe?" => "say_animal_2",
        "No thanks" => "say_lesson_1_from_no_animal"
      }
    },
    say_animal_2: { next: "get_animal_2_response"},
    get_animal_2_response: { next: "say_lesson_1_from_animal" },
    say_panda_1: { next: "get_panda_1_response" },
    get_panda_1_response: {
      next: {
        "Let's see it" => "say_panda_2",
        "No thanks" => "say_panda_2_no_panda"
      }
    },
    say_panda_2: { next: "get_panda_2_response" },
    get_panda_2_response: { next: "say_panda_3" },
    say_panda_3: { next: "get_panda_3_response" },
    get_panda_3_response: { next: "say_lesson_1" },
    say_panda_2_no_panda: { next: "get_panda_2_no_panda_response" },
    get_panda_2_no_panda_response: { next: "say_lesson_1" },
    say_lesson_1_from_pretty_good: { next: "get_lesson_1_repsonse" },
    say_lesson_1_from_no_animal: { next: "get_lesson_1_repsonse" },
    say_lesson_1_from_animal: { next: "get_lesson_1_repsonse" },
    say_lesson_1: { next: "get_lesson_1_repsonse" },
    get_lesson_1_repsonse: { next: "get_lesson_2" },
    say_lesson_2: { next: "get_lesson_2_repsonse" },
    get_lesson_2_repsonse: { next: "get_lesson_3" },
    say_lesson_3: { next: "get_lesson_3_repsonse" },
    get_lesson_3_repsonse: { next: "get_lesson_4" },
    say_lesson_4: { next: "get_lesson_4_repsonse" },
    get_lesson_4_repsonse: { next: "get_lesson_5" },
    say_lesson_5: { next: "get_lesson_5_repsonse" },
    get_lesson_5_repsonse: { next: "get_lesson_6" },
    say_lesson_6: { next: "get_lesson_6_repsonse" },
    get_lesson_6_repsonse: {
      next: {
        "Another friend?" => "say_lesson_7_from_another_friend",
        "Go on" => "say_lesson_7_from_go_on",
        "Who’s Maria?" => "say_maria"
      }
    },
    say_maria: { next: "get_maria_response" },
    get_maria_response: { next: "say_lesson_7" },
    say_lesson_7_from_another_friend: { next: "get_lesson_7_response" },
    say_lesson_7_from_go_on: { next: "get_lesson_7_response" },
    say_lesson_7: { next: "get_lesson_7_response" },
    get_lesson_7_response: { next: "say_lesson_8" },
    say_lesson_8: { next: "get_lesson_8_response" },
    get_lesson_8_response: { next: "say_lesson_9" },
    say_lesson_9: { next: "get_lesson_9_response" },
    get_lesson_9_response: { next: "say_lesson_10" },
    say_lesson_10: { next: "get_lesson_10_response" },
    get_lesson_10_response: { next: "say_lesson_11" },
    say_lesson_11: { next: "get_lesson_11_response" },
    get_lesson_11_response: { next: "say_lesson_12" },
    say_lesson_12: { next: "get_lesson_12_response" },
    get_lesson_12_response: { next: "say_lesson_13" },
    say_lesson_13: { next: "get_lesson_13_response" },
    get_lesson_13_response: {
      next: {
        "OK" => "say_advice_1",
        "Sorry, gotta go" => "say_wrap_up_1_from_skip"
      }
    },
    say_advice_1: { next: "get_advice_1_response" },
    get_advice_1_response: {
      next: {
        "Got it" => "say_advice_2_from_got_it",
        "So much easier to tell a friend..." => "say_trust_me"
      }
    },
    say_trust_me: { next: "get_trust_me_response" },
    get_trust_me_response: { next: "say_advice_2_from_trust_me" },
    say_advice_2_from_trust_me: { next: "get_advice_2_response" },
    say_advice_2_from_got_it: { next: "get_advice_2_response" },
    get_advice_2_response: { next: "say_advice_3" },
    say_advice_3: { next: "get_advice_3_response" },
    get_advice_3_response: { next: "say_advice_4" },
    say_advice_4: { next: "get_advice_4_response" },
    get_advice_4_response: { next: "say_advice_5" },
    say_advice_5: { next: "get_advice_5_response" },
    get_advice_5_response: { next: "say_advice_6" },
    say_advice_6: { next: "get_advice_6_response" },
    get_advice_6_response: { next: "say_advice_7" },
    say_advice_7: { next: "get_advice_7_response" },
    get_advice_7_response: { next: "say_advice_8" },
    say_advice_8: { next: "get_advice_8_response" },
    get_advice_8_response: { next: "say_advice_9" },
    say_advice_9: { next: "get_advice_9_response" },
    get_advice_9_response: { next: "say_advice_10" },
    say_advice_10: { next: "get_advice_10_response" },
    get_advice_10_response: {
      next: {
        "Sure" => "say_articles",
        "No thanks" => "say_wrap_up_1_no_articles"
      }
    },
    say_articles: { next: "get_articles_response"},
    get_articles_response: { next: "say_wrap_up_1" },
    say_wrap_up_1_from_skip: { next: "get_wrap_up_1_response" },
    say_wrap_up_1_no_articles: { next: "get_wrap_up_1_response" },
    say_wrap_up_1: { next: "get_wrap_up_1_response" },
    get_wrap_up_1_response: { next: "say_wrap_up_2" },
    say_wrap_up_2: { next: "get_wrap_up_2_response" },
    get_wrap_up_2_response: { next: "say_goodbye" }
  }
end