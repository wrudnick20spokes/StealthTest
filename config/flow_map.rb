class FlowMap

  include Stealth::Flow

  flow :day2 do
    # START HELLO
    state :say_hello
    state :get_hello_response
    state :say_intro_1
    state :get_intro_1_response
    state :say_offer_animal
    state :get_offer_animal_response
    state :say_offer_to_help
    state :get_offer_to_help_response
    state :say_animal
    state :get_animal_response
    state :say_helpful_quote
    state :get_helpful_quote_response
    # END HELLO

    # START PROFILE SETTING
    state :say_profile_1_from_thumbs_up
    state :say_profile_1_from_no_animal
    state :say_profile_1_from_animal
    state :say_profile_1_from_helpful_quote
    state :say_profile_1_from_no_help
    state :get_profile_1_response
    state :say_profile_2
    state :get_profile_2_response
    state :say_profile_3
    state :get_profile_3_response
    state :say_ask_1_child
    state :get_ask_1_child_response
    state :say_ask_multi_children
    state :get_ask_multi_children_response
    state :say_profile_4_from_first_skip
    state :say_profile_4_from_second_skip
    state :say_profile_4_from_skip_1_child
    state :say_profile_4_from_1_child
    state :say_profile_4_from_skip_multi_children
    state :say_profile_4_from_multi_children
    state :get_profile_4_response
    state :say_ask_about_conversation
    state :get_ask_about_conversation_response
    state :say_thats_great
    state :say_got_it
    state :get_got_it_response
    state :say_one_more_thing
    state :get_one_more_thing_response
    state :say_ask_how_conversation_went
    state :get_ask_how_conversation_went_response
    state :say_thank_you
    state :get_conversation_evaluation
    state :say_done_with_questions_from_conversation_evaluation
    state :say_done_with_questions_from_skip
    state :say_done_with_questions_from_not_really
    state :get_done_with_questions_response
    # END PROFILE SETTING

    # START TODAY'S LESSON
    state :say_lesson_1
    state :get_lesson_1_response
    state :say_lesson_2
    state :get_lesson_2_response
    state :say_how_to_pronounce
    state :get_how_to_pronounce_response
    state :say_lesson_3_from_how_to_pronounce
    state :say_lesson_3
    state :get_lesson_3_response
    state :say_lesson_4
    state :get_lesson_4_response
    state :say_lesson_5
    state :get_lesson_5_response
    state :say_lesson_6
    state :get_lesson_6_response
    state :say_lesson_7
    state :get_lesson_7_response
    state :say_lesson_8
    state :get_lesson_8_response
    state :say_lesson_9
    state :get_lesson_9_response
    state :say_lesson_10
    state :get_lesson_10_response
    state :say_lesson_11
    state :get_lesson_11_response
    state :say_share_article
    state :get_share_article_response
    state :say_lesson_complete_from_no_article
    state :say_lesson_complete_from_article
    state :get_lesson_complete_response
    # END TODAY'S LESSON

    # START QUIZ
    state :say_quiz_1
    state :get_quiz_1_response
    state :say_quiz_2
    state :get_quiz_2_response
    state :say_quiz_3
    state :get_quiz_3_response
    state :say_quiz_4
    state :get_quiz_4_response
    state :say_quiz_5
    state :get_quiz_5_response
    state :say_quiz_6
    state :get_quiz_6_response
    state :say_quiz_7
    state :get_quiz_7_response
    state :say_quiz_8
    state :get_quiz_8_response
    state :say_share_video
    state :get_share_video_response
    state :say_quiz_9_from_no_video
    state :say_quiz_9_from_video
    state :get_quiz_9_response
    state :say_quiz_10
    state :get_quiz_10_response
    state :say_quiz_11
    state :get_quiz_11_response
    state :say_share_article_2
    state :get_share_article_2_response
    # END QUIZ

    # START WRAP UP
    state :say_wrap_up_1_no_article
    state :say_wrap_up_1_article
    state :get_wrap_up_1_response
    state :say_wrap_up_2
    state :get_wrap_up_2_response
    state :say_wrap_up_3
    state :get_wrap_up_3_response
    state :say_wrap_up_4
    state :get_wrap_up_4_response
    state :say_goodbye
    # END WRAP UP
	end

  flow :day1 do
    # START HELLO
    state :say_hello
    state :get_hello_response
    state :say_intro_1
    state :get_intro_1_response
    state :say_intro_2
    state :get_intro_2_response
    state :say_intro_3
    state :get_intro_3_response
    state :say_intro_4
    state :get_intro_4_response
    state :say_intro_5
    state :get_intro_5_response
    state :say_offer_story
    state :get_story_offer_response
    # END HELLO

    # START STORY
    state :say_story_1
    state :get_story_1_response
    state :say_story_2
    state :get_story_2_response
    state :say_story_3
    state :get_story_3_response
    state :say_story_4
    state :get_story_4_response
    state :say_story_5
    state :get_story_5_response
    state :say_story_6
    state :get_story_6_response
    state :say_story_7
    state :get_story_7_response
    state :say_story_8
    state :get_story_8_response
    state :say_story_9
    state :get_story_9_response
    # END STORY

    # START WHY WE'RE HERE
    state :say_why_1_from_story
    state :say_why_1_from_skip
    state :get_why_1_response
    state :say_why_2
    state :get_why_2_response
    state :say_why_3
    state :get_why_3_response
    state :say_why_4
    state :get_why_4_response
    state :say_why_5
    state :get_why_5_response
    state :say_why_6
    state :get_why_6_response
    state :say_why_7
    state :get_why_7_response
    state :say_why_8
    state :get_why_8_response
    # END WHY WE'RE HERE

    # START HOW IT WORKS 
    state :say_how_1
    state :get_how_1_response
    state :say_how_2
    state :get_how_2_response
    state :say_how_3
    state :get_how_3_response
    # END HOW IT WORKS

    # START PROFILE SETTING
    state :say_profile_setting_1
    state :get_profile_setting_1_response
    state :say_profile_setting_2
    state :get_profile_setting_2_response
    state :say_profile_setting_3
    state :get_profile_setting_3_response
    state :say_profile_setting_4
    state :get_profile_setting_4_response
    state :say_profile_setting_5
    state :get_profile_setting_5_response
    state :say_profile_setting_6
    state :get_profile_setting_6_response
    state :say_profile_setting_7
    state :get_profile_setting_7_response
    state :say_profile_setting_8
    # END PROFILE SETTING
  end

  flow :catch_all do
    state :level1
  end

end
