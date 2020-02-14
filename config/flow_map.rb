#require '../lib/day_2_flow.rb'
class FlowMap

  include Stealth::Flow


  # ################################################
  # DAY 1
  # ################################################
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
    state :get_profile_setting_8_response
    state :say_goodbye
    # END PROFILE SETTING

    # START TEMPORARY
    state :say_goodbye_temporary
    state :get_goodbye_temporary_response
    # END TEMPORARY
  end


  # ################################################
  # DAY 2
  # ################################################
  flow :day2 do
    # START HELLO
    state :say_hello
    state :say_hello_from_skip
    state :say_hello_from_catch_up
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

    # START TODAY'S LESSON
    state :say_lesson_1_from_thumbs_up
    state :say_lesson_1_from_no_animal
    state :say_lesson_1_from_animal
    state :say_lesson_1_from_helpful_quote
    state :say_lesson_1_from_no_help
    state :get_lesson_1_response
    state :say_lesson_1_1
    state :get_lesson_1_1_response
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
    # END QUIZ

    # START WRAP UP
    state :say_wrap_up_1_no_video
    state :say_wrap_up_1
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


  # ################################################
  # DAY 3
  # ################################################
  flow :day3 do
    # START HELLO
    state :say_hello
    state :say_hello_from_skip
    state :say_hello_from_catch_up
    state :get_hello_response
    # END HELLO

    # START PROFILE SETTING
    state :say_profile_1
    state :get_profile_1_response
    state :say_profile_2
    state :get_profile_2_response
    state :say_profile_3
    state :get_profile_3_response
    state :say_ask_1_child
    state :get_ask_1_child_response
    state :say_ask_multi_children
    state :get_ask_multi_children_response
    state :say_profile_4_from_skip_1_child
    state :say_profile_4_from_1_child
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

    # START DELAYED HELLO
    state :say_intro_1
    state :get_intro_1_response
    state :say_intro_2
    state :get_intro_2_response
    state :say_intro_3
    state :get_intro_3_response
    # END DELAYED HELLO

    # START QUIZ
    state :say_quiz_1
    state :get_quiz_1_repsonse
    state :say_quiz_2
    state :get_quiz_2_response
    state :say_quiz_3
    state :get_quiz_3_response
    state :say_quiz_4
    state :get_quiz_4_response
    state :say_quiz_5
    state :get_quiz_5_response
    # END QUIZ

    # START LESSON
    state :say_lesson_1
    state :get_lesson_1_response
    state :say_lesson_2
    state :get_lesson_2_response
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
    state :wait_for_article_1
    state :get_wait_for_article_1_response
    state :say_lesson_9_from_skip
    state :say_lesson_9
    state :get_lesson_9_response
    state :say_lesson_10
    state :get_lesson_10_response
    state :say_lesson_11
    state :get_lesson_11_response
    state :say_lesson_12
    state :get_lesson_12_response
    state :say_lesson_13
    state :get_lesson_13_response
    # END LESSON

    # START OFFERING TOPICS
    state :offer_topics_from_lesson
    state :offer_topics_from_topic
    state :get_offer_topics_response
    state :say_first_periods
    state :say_menopause
    state :say_periods_and_birth_control
    state :get_offer_more_topics_response
    # END OFFERING TOPICS

    # START WRAP UP
    state :say_wrap_up_1_from_skip
    state :say_wrap_up_1
    state :get_wrap_up_1_response
    state :say_wrap_up_2
    state :get_wrap_up_2_response
    state :say_wrap_up_3
    state :get_wrap_up_3_response
    state :say_goodbye
    # END WRAP UP
  end


  # ################################################
  # DAY 4
  # ################################################
  flow :day4 do
    Day4Flow::DAY_4_FLOWS.each do |key, value|
     state key
    end
    state :say_goodbye
  end

  # ################################################
  # DAY 5
  # ################################################
  flow :day5 do
    Day5Flow::DAY_5_FLOWS.each do |key, value|
      state key
    end
    state :say_goodbye
  end


  # ################################################
  # DAY 6
  # ################################################
  flow :day6 do
    Day6Flow::DAY_6_FLOWS.each do |key, value|
      state key
    end
    state :say_goodbye
  end


  # ################################################
  # DAY 7
  # ################################################
  flow :day7 do
    Day7Flow::DAY_7_FLOWS.each do |key, value|
      state key
    end
    state :say_goodbye
  end


  # ################################################
  # DAY 8
  # ################################################
  flow :day8 do
    Day8Flow::DAY_8_FLOWS.each do |key, value|
      state key
    end
    state :say_goodbye
  end


  # ################################################
  # DAY 9
  # ################################################
  flow :day9 do
    Day9Flow::DAY_9_FLOWS.each do |key, value|
      state key
    end
    state :say_goodbye
  end


  # ################################################
  # HELPERS
  # ################################################
	flow :helper do
    state :say_too_early

    state :say_content_unlocked
  end


  # ################################################
  # CATCH UP
  # ################################################
  flow :catch_up do
    state :start_catch_up

    # DAY 1
    state :catch_up_several_chats_1
    state :catch_up_a_couple_chats_1
    state :catch_up_one_chat_1
    state :get_catch_up_response_1

    # DAY 2
    state :catch_up_several_chats_2
    state :catch_up_a_couple_chats_2
    state :catch_up_one_chat_2
    state :get_catch_up_response_2

    # DAY 3
    state :catch_up_several_chats_3
    state :catch_up_a_couple_chats_3
    state :catch_up_one_chat_3
    state :get_catch_up_response_3

    # DAY 4
    state :catch_up_several_chats_4
    state :catch_up_a_couple_chats_4
    state :catch_up_one_chat_4
    state :get_catch_up_response_4

    # DAY 5
    state :catch_up_several_chats_5
    state :catch_up_a_couple_chats_5
    state :catch_up_one_chat_5
    state :get_catch_up_response_5

    # DAY 6
    state :catch_up_several_chats_6
    state :catch_up_a_couple_chats_6
    state :catch_up_one_chat_6
    state :get_catch_up_response_6

    # DAY 7
    state :catch_up_several_chats_7
    state :catch_up_a_couple_chats_7
    state :catch_up_one_chat_7
    state :get_catch_up_response_7

    # DAY 8
    state :catch_up_several_chats_8
    state :catch_up_a_couple_chats_8
    state :catch_up_one_chat_8
    state :get_catch_up_response_8

    # DAY 9
    state :catch_up_several_chats_9
    state :catch_up_a_couple_chats_9
    state :catch_up_one_chat_9
    state :get_catch_up_response_9

    # DAY 10
    state :catch_up_several_chats_10
    state :catch_up_a_couple_chats_10
    state :catch_up_one_chat_10
    state :get_catch_up_response_10

    # DAY 11
    state :catch_up_several_chats_11
    state :catch_up_a_couple_chats_11
    state :catch_up_one_chat_11
    state :get_catch_up_response_11

    # DAY 12
    state :catch_up_several_chats_12
    state :catch_up_a_couple_chats_12
    state :catch_up_one_chat_12
    state :get_catch_up_response_12

    state :done_for_today
    state :get_done_for_today_response
    state :say_goodbye
  end


  # ################################################
  # INCOMPLETE DAYS
  # ################################################
  flow :incomplete_day do
    # DAY 1
    state :day_1_hello
    state :get_day_1_hello_response
    state :offer_day_1_resume
    state :get_offer_resume_1_response

    # DAY 2
    state :day_2_hello
    state :get_day_2_hello_response
    state :offer_day_2_resume
    state :get_offer_resume_2_response

    # DAY 3
    state :day_3_hello
    state :get_day_3_hello_response
    state :offer_day_3_resume
    state :get_offer_resume_3_response

    # DAY 4
    state :day_4_hello
    state :get_day_4_hello_response
    state :offer_day_4_resume
    state :get_offer_resume_4_response

    # DAY 5
    state :day_5_hello
    state :get_day_5_hello_response
    state :offer_day_5_resume
    state :get_offer_resume_5_response

    # DAY 6
    state :day_6_hello
    state :get_day_6_hello_response
    state :offer_day_6_resume
    state :get_offer_resume_6_response

    # DAY 7
    state :day_7_hello
    state :get_day_7_hello_response
    state :offer_day_7_resume
    state :get_offer_resume_7_response

    # DAY 8
    state :day_8_hello
    state :get_day_8_hello_response
    state :offer_day_8_resume
    state :get_offer_resume_8_response

    # DAY 9
    state :day_9_hello
    state :get_day_9_hello_response
    state :offer_day_9_resume
    state :get_offer_resume_9_response

    # DAY 10
    state :day_10_hello
    state :get_day_10_hello_response
    state :offer_day_10_resume
    state :get_offer_resume_10_response

    # DAY 11
    state :day_11_hello
    state :get_day_11_hello_response
    state :offer_day_11_resume
    state :get_offer_resume_11_response

    # DAY 12
    state :day_12_hello
    state :get_day_12_hello_response
    state :offer_day_12_resume
    state :get_offer_resume_12_response

    state :say_time_travel
	end

  flow :catch_all do
    state :level1
  end

end
