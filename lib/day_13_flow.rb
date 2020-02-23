    #get_intro_2_response: { next: "say_review_1" },
    #get_hello_response: { next: "say_intro_1" },
class Day13Flow
  DAY_13_FLOWS = {
    say_hello: { next: "get_hello_response" },
    say_hello_from_skip: { next: "" },
    say_hello_from_catch_up: { next: "" },
    get_hello_response: { next: "say_intro_1" },
    say_intro_1: { next: "get_intro_1_response" },
    get_intro_1_response: { next: "say_intro_2" },
    say_intro_2: { next: "get_intro_2_response" },
    get_intro_2_response: { 
      next: {
        "We sure did" => "say_review_1a",
        "We did?" => "say_review_1b"
      }
    },
    say_review_1: { next: "get_reviews_1_response" },
    say_review_1a: { next: "get_reviews_1_response" },
    say_review_1b: { next: "get_reviews_1b_response" },
    say_review_1c: { next: "get_reviews_1_response" },
    get_reviews_1_response: { next: "say_review_2" },
    get_reviews_1b_response: { next: "say_review_1c" },
    say_review_2: { next: "get_reviews_2_response" },
    get_reviews_2_response: { next: "say_review_3" },
    say_review_3: { next: "get_reviews_3_response" },
    get_reviews_3_response: { next: "say_review_4" },
    say_review_4: { next: "get_reviews_4_response" },
    get_reviews_4_response: { next: "say_review_5" },
    say_review_5: { next: "get_reviews_5_response" },
    get_reviews_5_response: { next: "say_review_6" },
    say_review_6: { next: "get_reviews_6_response" },
    get_reviews_6_response: { 
      next: {
        "Sure" => "say_review_6a", 
        "No thanks" => "say_review_7", 
      }
    },
    say_review_6a: { next: "get_reviews_6a_response" },
    get_reviews_6a_response: { next: "say_review_7a" },
    say_review_7: { next: "get_reviews_7_response" },
    say_review_7a: { next: "get_reviews_7_response" },
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
    get_reviews_12_response: { 
      next: { 
        "Yes please" => "say_review_12a",
        "Skip" => "say_review_13"
      }
     },
    say_review_12a: { next: "get_reviews_12a_response" },
    get_reviews_12a_response: { next: "say_review_13a" },
    say_review_13: { next: "get_reviews_13_response" },
    say_review_13a: { next: "get_reviews_13_response" },
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
    get_reviews_18_response: { 
      next: {
        "Yes please" => "say_review_18a",
        "No thanks" => "say_review_19"
      }
    },
    say_review_18a: { next: "get_reviews_18a_response" },
    get_reviews_18a_response: { next: "say_review_19a" },
    say_review_19: { next: "get_reviews_19_response" },
    say_review_19a: { next: "get_reviews_19_response" },
    get_reviews_19a_response: { next: "say_review_20" },
    say_review_20: { next: "get_reviews_20_response" },
    get_reviews_19_response: { 
      next: {
        "Ok" => "say_review_20a",
        "No thanks" => "say_wrap_up_1"
      }
    },
    say_review_20a: { next: "get_reviews_20a_response" },
    get_reviews_20_response: {  next: "say_wrap_up_1" },
    get_reviews_20a_response: {  next: "say_wrap_up_1a" },
    say_wrap_up_1: { next: "get_wrap_up_1_response" },
    say_wrap_up_1a: { next: "get_wrap_up_1_response" },
    get_wrap_up_1_response: { next: "say_wrap_up_2" },
    say_wrap_up_2: { next: "get_wrap_up_2_response" },
    get_wrap_up_2_response: { next: "say_goodbye" }
  }
end