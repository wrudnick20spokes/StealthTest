    #get_intro_2_response: { next: "say_review_1" },
    #get_hello_response: { next: "say_intro_1" },
class Day11Flow
  DAY_11_FLOWS = {
    say_hello: { next: "get_hello_response" },
    say_hello_from_skip: { next: "" },
    say_hello_from_catch_up: { next: "" },
    get_hello_response: { next: "say_intro_1" },
    say_intro_1: { next: "get_intro_1_response" },
    get_intro_1_response: { next: "say_intro_2" },
    say_intro_2: { next: "get_intro_2_response" },
    get_intro_2_response: { next: "say_review_1" },
    say_review_1: { next: "get_reviews_1_response" },
    get_reviews_1_response: { next: "say_review_2" },
    say_review_2: { next: "get_reviews_2_response" },
    get_reviews_2_response: { next: "say_review_3" },
    say_review_3: { next: "get_reviews_3_response" },
    get_reviews_3_response: { next: "say_review_5" },
    say_review_4: { next: "get_reviews_4_response" },
    get_reviews_4_response: { next: "say_review_5" },
    say_review_5: { next: "get_reviews_5_response" },
    get_reviews_5_response: { next: "say_review_6" },
    say_review_6: { next: "get_reviews_6_response" },
    get_reviews_6_response: { next: "say_review_7" },
    say_review_7: { next: "get_reviews_7_response" },
    get_reviews_7_response: { next: "say_review_8" },
    say_review_8: { next: "get_reviews_8_response" },
    get_reviews_8_response: { next: "say_review_9" },
    say_review_9: { next: "get_reviews_9_response" },
    get_reviews_9_response: { next: "say_review_10" },
    say_review_10: { next: "get_reviews_10_response" },
    get_reviews_10_response: { next: "say_review_11" },
    say_review_11: { next: "get_reviews_11_response" },
    get_reviews_11_response: { next: "say_review_12" },
    say_review_12: { next: "get_reviews_12_response" },
    get_reviews_12_response: { next: "say_review_13" },
    say_review_13: { next: "get_reviews_13_response" },
    get_reviews_13_response: { next: "say_review_14" },
    say_review_14: { next: "get_reviews_14_response" },
    get_reviews_14_response: { next: "say_review_15" },
    say_review_15: { next: "get_reviews_15_response" },
    get_reviews_15_response: { next: "say_review_16" },
    say_review_16: { next: "get_reviews_16_response" },
    get_reviews_16_response: { next: "say_review_17" },
    say_review_17: { next: "get_reviews_17_response" },
    get_reviews_17_response: { next: "say_review_18" },
    say_review_18: { next: "get_reviews_18_response" },
    get_reviews_18_response: { next: "say_review_19" },
    say_review_19: { next: "get_reviews_19_response" },
    get_reviews_19_response: { next: "say_review_20" },
    say_review_20: { next: "get_reviews_20_response" },
    get_reviews_20_response: {  next: "say_review_21" },
    say_review_21: { next: "get_reviews_21_response" },
    get_reviews_21_response: {  
      next: {
        "OK" => "say_review_21_ok",
        "No thanks" => "say_review_21_no_thanks",
        "I'll watch later" => "say_review_21_watch_later",
      }
    },
    say_review_21_ok: { next: "get_reviews_21_ok"},
    get_reviews_21_ok: { next: "say_review_21_ok_a"},
    say_review_21_ok_a: { next: "get_reviews_21_ok_a"},
    get_reviews_21_ok_a: { next: "say_review_21_ok_b"},
    say_review_21_ok_b: { next: "get_reviews_21_ok_b"},
    get_reviews_21_ok_b: { 
      next: {
        "Sure!" => "say_review_22_sure", 
        "Not now." => "say_review_22_not_now" 
      }
    },
    say_review_21_no_thanks: { next: "get_reviews_21_no_thanks"},
    get_reviews_21_no_thanks: { 
      next: {
        "Sure!" => "say_review_22_sure", 
        "Not now." => "say_review_22_not_now" 
      }
    },
    say_review_21_watch_later: { next: "get_reviews_21_watch_later"},
    get_reviews_21_watch_later: { next: "say_review_22"},
    say_review_22: { next: "get_reviews_22_response" },
    get_reviews_22_response: {  
      next: {
        "Sure!" => "say_review_22_sure", 
        "Not now." => "say_review_22_not_now" 
      }
    },
    say_review_22_sure: { next: "get_reviews_22_sure" },
    get_reviews_22_sure: {  next: "say_review_22_sure_a" },
    say_review_22_sure_a: { next: "get_reviews_22_sure_a" },
    get_reviews_22_sure_a: {  next: "say_review_23" },
    say_review_22_not_now: { next: "get_reviews_22_not_now" },
    get_reviews_22_not_now: {  next: "say_wrap_up_1" },
    say_review_23: { next: "get_reviews_23_response" },
    get_reviews_23_response: {  next: "say_wrap_up_1" },
    say_wrap_up_1: { next: "get_wrap_up_1_response" },
    say_wrap_up_1a: { next: "get_wrap_up_1_response" },
    get_wrap_up_1_response: { next: "say_wrap_up_2" },
    say_wrap_up_2: { next: "get_wrap_up_2_response" },
    get_wrap_up_2_response: { next: "say_goodbye" }
  }
end