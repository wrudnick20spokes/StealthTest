class Day6Flow
  DAY_6_FLOWS = {
    say_hello: { next: "get_hello_response" },
    say_hello_from_skip: { next: "get_intro_1_response" },
    say_hello_from_catch_up: { next: "get_intro_1_response" },
    get_hello_response: { next: "say_intro_1" },
    say_intro_1: { next: "get_intro_1_response" },
    get_intro_1_response: { 
      next: {
        "Pretty well" => "say_lesson_1_from_pretty_well",
        "Medium" => "say_offer_video_1",
        "Not great" => "say_offer_help_1"
      }
    },
    say_offer_video_1: { next: "get_offer_video_1_response" },
    get_offer_video_1_response: { 
      next: {
        "Nah" => "say_lesson_1_from_no_video",
        "Sure" => "say_offer_video_2"
      }
    },
    say_offer_video_2: { next: "get_offer_video_2_response" },
    get_offer_video_2_response: { next: "say_lesson_1_from_video" },
    say_offer_help_1: { next: "get_offer_help_1_response" },
    get_offer_help_1_response: {
      next: {
        "Cute video" => "say_offer_video_2",
        "Encouraging quote" => "say_quote_1",
        "No thanks" => "say_lesson_1_from_no_help"
      }
    },
    say_quote_1: { next: "get_quote_1_response" },
    get_quote_1_response: { next: "say_lesson_1" },
    say_lesson_1_from_pretty_well: { next: "get_lesson_1_response"},
    say_lesson_1_from_no_video: { next: "get_lesson_1_response"},
    say_lesson_1_from_video: { next: "get_lesson_1_response"},
    say_lesson_1_from_no_help: { next: "get_lesson_1_response"},
    say_lesson_1: { next: "get_lesson_1_response" },
    get_lesson_1_response: { next: "say_lesson_2" },
    say_lesson_2: { next: "get_lesson_2_response" },
    get_lesson_2_response: {
      next: {
        "We sure did" => "say_lesson_3",
        "We did?" => "say_yup"
      }
    },
    say_yup: { next: "get_yup_response" },
    get_yup_response: { next: "say_lesson_3_from_yup" },
    say_lesson_3_from_yup: { next: "get_lesson_3_response" },
    say_lesson_3: { next: "get_lesson_3_response" },
    get_lesson_3_response: { next: "say_lesson_4" },
    say_lesson_4: { next: "get_lesson_4_response" },
    get_lesson_4_response: { next: "say_lesson_5" },
    say_lesson_5: { next: "get_lesson_5_response" },
    get_lesson_5_response: { next: "say_lesson_6" },
    say_lesson_6: { next: "get_lesson_6_response" },
    get_lesson_6_response: { next: "say_lesson_7" },
    say_lesson_7: { next: "get_lesson_7_response" },
    get_lesson_7_response: { 
      next: {
        "Yes" => "say_share_article_1",
        "No" => "say_lesson_8"
      }
    },
    say_share_article_1: { next: "get_share_article_1_response" },
    get_share_article_1_response: { next: "say_lesson_8" },
    say_lesson_8: { next: "get_lesson_8_response" },
    get_lesson_8_response: { next: "say_lesson_9" },
    say_lesson_9: { next: "get_lesson_9_response" },
    get_lesson_9_response: { next: "say_lesson_10" },
    say_lesson_10: { next: "get_lesson_10_response" },
    get_lesson_10_response: { 
      next: {
        "Yes" => "say_share_article_2",
        "No thanks" => "say_lesson_11_no_article"
      }
    },
    say_share_article_2: { next: "get_share_article_2_response" },
    get_share_article_2_response: { next: "say_lesson_11" },
    say_lesson_11_no_article: { next: "get_lesson_11_response" },
    say_lesson_11: { next: "get_lesson_11_response" },
    get_lesson_11_response: { next: "say_lesson_12" },
    say_lesson_12: { next: "get_lesson_12_response" },
    get_lesson_12_response: {
      next: {
        "Sure" => "say_share_article_3",
        "No thanks" => "say_lesson_13_no_article"
      }
    },
    say_share_article_3: { next: "get_share_article_3_response" },
    get_share_article_3_response: { next: "say_lesson_13" },
    say_lesson_13_no_article: { next: "get_lesson_13_response" },
    say_lesson_13: { next: "get_lesson_13_response" },
    get_lesson_13_response: { next: "say_lesson_14" },
    say_lesson_14: { next: "get_lesson_14_response" },
    get_lesson_14_response: {
      next: {
        "Tell me more" => "say_share_article_4",
        "Skip" => "say_lesson_15_from_skip"
      }
    },
    say_share_article_4: { next: "get_share_article_4_response" },
    get_share_article_4_response: { next: "say_lesson_15" },
    say_lesson_15_from_skip: { next: "get_lesson_15_response" },
    say_lesson_15: { next: "get_lesson_15_response" },
    get_lesson_15_response: { next: "say_lesson_16" },
    say_lesson_16: { next: "get_lesson_16_response" },
    get_lesson_16_response: { next: "say_lesson_17" },
    say_lesson_17: { next: "get_lesson_17_response" },
    get_lesson_17_response: { 
      next: {
        "Sure" => "say_share_video_1",
        "No thanks" => "say_lesson_18_no_video"
      }
    },
    say_share_video_1: { next: "get_share_video_1_response" },
    get_share_video_1_response: { next: "say_lesson_18" },
    say_lesson_18_no_video: { next: "get_lesson_18_response" },
    say_lesson_18: { next: "get_lesson_18_response" },
    get_lesson_18_response: { next: "say_lesson_19" },
    say_lesson_19: { next: "get_lesson_19_response" },
    get_lesson_19_response: {
      next: {
        "I’ll check it out" => "say_share_article_5",
        "No thanks" => "say_wrap_up_1_no_article"
      }
    },
    say_share_article_5: { next: "get_share_article_5_response" },
    get_share_article_5_response: { next: "say_wrap_up_1" },
    say_wrap_up_1_no_article: { next: "get_wrap_up_1_response" },
    say_wrap_up_1: { next: "get_wrap_up_1_response" },
    get_wrap_up_1_response: { next: "say_wrap_up_2" },
    say_wrap_up_2: { next: "get_wrap_up_2_response" },
    get_wrap_up_2_response: { next: "say_wrap_up_3" },
    say_wrap_up_3: { next: "get_wrap_up_3_response" },
    get_wrap_up_3_response: { next: "say_goodbye"}
  }
end