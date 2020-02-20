class Day7Flow
  DAY_7_FLOWS = {
    say_hello: { next: "get_hello_response" },
    say_hello_from_skip: { next: "get_intro_1_response" },
    say_hello_from_catch_up: { next: "get_intro_1_response" },
    get_hello_response: { next: "say_intro_1" },
    say_intro_1: { next: "get_intro_1_response" },
    get_intro_1_response: {
      next: {
        "Yes!" => "say_robot_dance",
        "A bit" => "say_okay",
        "Not really" => "say_feedback_1"
      }
    },
    say_robot_dance: { next: "get_robot_dance_response" },
    get_robot_dance_response: { next: "say_intro_2"},
    say_okay: { next: "get_okay_response" },
    get_okay_response: { next: "say_intro_2" },
    say_feedback_1: { next: "get_feedback_1_response" },
    get_feedback_1_response: {
      next: {
        "Sure" => "say_feedback_2",
        "No thanks" => "say_intro_2_no_feedback"
      }
    },
    say_feedback_2: { next: "get_feedback_2_response" },
    get_feedback_2_response: { next: "say_intro_2_feedback" },
    say_intro_2_no_feedback: { next: "get_intro_2_response" },
    say_intro_2_feedback: { next: "get_intro_2_response" },
    say_intro_2: { next: "get_intro_2_response" },
    get_intro_2_response: { next: "say_lesson_1" },
    say_lesson_1: { next: "get_lesson_1_response" },
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
        "Sure" => "say_pads_1",
        "No thanks" => "say_tampons_1_no_pads"
      }
    },
    say_pads_1: { next: "get_pads_1_response" },
    get_pads_1_response: { next: "say_pads_2" },
    say_pads_2: { next: "get_pads_2_response" },
    get_pads_2_response: { next: "say_tampons_1" },
    say_tampons_1_no_pads: { next: "get_tampons_1_response" },
    say_tampons_1: { next: "get_tampons_1_response" },
    get_tampons_1_response: {
      next: {
        "Yes" => "say_tampons_2",
        "No thanks" => "say_cups_1_no_tampons"
      }
    },
    say_tampons_2: { next: "get_tampons_2_response" },
    get_tampons_2_response: { next: "say_tampons_3" },
    say_tampons_3: { next: "get_tampons_3_response" },
    get_tampons_3_response: {
      next: {
        "OK" => "say_tampons_4",
        "No thanks" => "say_cups_1_no_article"
      }
    },
    say_tampons_4: { next: "get_tampons_4_response" },
    get_tampons_4_response: { next: "say_cups_1" },
    say_cups_1_no_tampons: { next: "get_cups_1_response" },
    say_cups_1_no_article: { next: "get_cups_1_response" },
    say_cups_1: { next: "get_cups_1_response" },
    get_cups_1_response: {
      next: {
        "I do" => "say_cups_2",
        "I do not" => "say_panties_1_from_skip"
      }
    },
    say_cups_2: { next: "get_cups_2_response" },
    get_cups_2_response: { next: "say_cups_3" },
    say_cups_3: { next: "get_cups_3_response" },
    get_cups_3_response: { next: "say_cups_4" },
    say_cups_4: { next: "get_cups_4_response" },
    get_cups_4_response: { next: "say_cups_5" },
    say_cups_5: { next: "get_cups_5_response" },
    get_cups_5_response: { next: "say_cups_6" },
    say_cups_6: { next: "get_cups_6_response" },
    get_cups_6_response: { 
      next: {
        "Sure" => "say_cups_7",
        "No thanks" => "say_panties_1_from_skip"
      }
    },
    say_cups_7: { next: "get_cups_7_response" },
    get_cups_7_response: { next: "say_panties_1" },
    say_panties_1_from_skip: { next: "get_panties_1_response" },
    say_panties_1: { next: "get_panties_1_response" },
    get_panties_1_response: { next: "say_panties_2" },
    say_panties_2: { next: "get_panties_2_response" },
    get_panties_2_response: {
      next: {
        "Sure would" => "say_panties_3",
        "No thanks" => "say_find_1_no_panties"
      }
    },
    say_panties_3: { next: "get_panties_3_response" },
    get_panties_3_response: { next: "say_panties_4" },
    say_panties_4: { next: "get_panties_4_response" },
    get_panties_4_response: { next: "say_panties_5" },
    say_panties_5: { next: "get_panties_5_response" },
    get_panties_5_response: { next: "say_panties_6" },
    say_panties_6: { next: "get_panties_6_response" },
    get_panties_6_response: {
      next: {
        "Alright" => "say_panties_7",
        "No thanks" => "say_find_1_no_panties"
      }
    },
    say_panties_7: { next: "get_panties_7_response" },
    get_panties_7_response: { next: "say_find_1" },
    say_find_1_no_panties: { next: "get_find_1_response" },
    say_find_1: { next: "get_find_1_response" },
    get_find_1_response: {
      next: {
        "How?" => "say_how_2",
        "I'll skip this part" => "say_wrap_up_1_no_how"
      }
    },
    say_how_2: { next: "get_how_2_response" },
    get_how_2_response: { next: "say_how_3" },
    say_how_3: { next: "get_how_3_response" },
    get_how_3_response: { next: "say_how_4" },
    say_how_4: { next: "get_how_4_response" },
    get_how_4_response: {
      next: {
        "A chart?" => "say_chart_1",
        "I'm all good" => "say_how_5_no_chart"
      }
    },
    say_chart_1: { next: "get_chart_1_response" },
    get_chart_1_response: { next: "say_how_5" },
    say_how_5_no_chart: { next: "get_how_5_response" },
    say_how_5: { next: "get_how_5_response" },
    get_how_5_response: {
      next: {
        "Sure" => "say_how_6",
        "No thanks" => "say_wrap_up_1_no_article"
      }
    },
    say_how_6: { next: "get_how_6_response" },
    get_how_6_response: { next: "say_wrap_up_1" },
    say_wrap_up_1_no_how: { next: "get_wrap_up_1_response" },
    say_wrap_up_1_no_article: { next: "get_wrap_up_1_response" },
    say_wrap_up_1: { next: "get_wrap_up_1_response" },
    get_wrap_up_1_response: { next: "say_wrap_up_2" },
    say_wrap_up_2: { next: "get_wrap_up_2_response" },
    get_wrap_up_2_response: { next: "say_goodbye" }
  }
end