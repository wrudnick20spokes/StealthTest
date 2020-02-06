class Day4Flow
  DAY_4_FLOWS = {
    say_hello: { next: "get_hello_response" },
    say_hello_from_skip: { next: "get_intro_1_response" },
    say_hello_from_catch_up: { next: "get_intro_1_response" },
    get_hello_response: { next: "say_intro_1"},
    say_intro_1: { next: "get_intro_1_response"},
    get_intro_1_response: { 
      next: {
        "::thumbs up::" => "say_lesson_1_from_thumbs_up",
        "::thumbs down::" => "say_offer_joke",
        "::shrug::" => "say_lesson_1_from_shrug"
      }
    },
    say_offer_joke: { next: "get_offer_joke_response"},
    get_offer_joke_response: {
      next: {
        "Sure" => "say_joke_1",
        "Not in the mood" => "say_lesson_1_from_no_joke"
      }
    },
    say_joke_1: { next: "get_joke_1_response"},
    get_joke_1_response: { next: "say_joke_2"},
    say_joke_2: { next: "get_joke_2_response"},
    get_joke_2_response: { next: "say_lesson_1_from_joke"},
    say_lesson_1_from_joke: { next: "get_lesson_1_response" },
    say_lesson_1_from_thumbs_up: { next: "get_lesson_1_response" },
    say_lesson_1_from_shrug: { next: "get_lesson_1_response" },
    say_lesson_1_from_no_joke: { next: "get_lesson_1_response" },
    get_lesson_1_response: { next: "say_lesson_2" },
    say_lesson_2: { next: "get_lesson_2_response" },
    get_lesson_2_response: { next: "say_lesson_3" },
    say_lesson_3: { next: "get_lesson_3_response" },
    get_lesson_3_response: { next: "say_lesson_4" },
    say_lesson_4: { next: "get_lesson_4_response" },
    get_lesson_4_response: { next: "say_lesson_5" },
    say_lesson_5: { next: "get_lesson_5_response" },
    get_lesson_5_response: { next: "say_lesson_6" },
    say_lesson_6: { next: "get_lesson_6_response" },
    get_lesson_6_response: { next: "say_lesson_7" },
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
    get_lesson_12_response: { 
      next: {
        "Sure" => "say_article_1",
        "No thanks" => "say_lesson_13_from_no_article"
      }
    },
    say_article_1: { next: "get_article_1_response" },
    get_article_1_response: { next: "say_article_2" },
    say_article_2: { next: "get_article_2_response" },
    get_article_2_response: { next: "say_lesson_13_from_article" },
    say_lesson_13_from_no_article: { next: "get_lesson_13_response" },
    say_lesson_13_from_article: { next: "get_lesson_13_response" },
    get_lesson_13_response: {
      next: {
        "OK" => "say_article_3",
        "No thanks" => "say_wrap_up_1_no_article"
      }
    },
    say_article_3: { next: "get_article_3_response" },
    get_article_3_response: { next: "say_wrap_up_1"},
    say_wrap_up_1_no_article: { next: "get_wrap_up_1_response" },
    say_wrap_up_1: { next: "get_wrap_up_1_response" },
    get_wrap_up_1_response: { next: "say_wrap_up_2" },
    say_wrap_up_2: { next: "get_wrap_up_2_response" },
    get_wrap_up_2_response: { next: "say_goodbye" }
  }
end