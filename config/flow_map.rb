class FlowMap

  include Stealth::Flow

  flow :hello do
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
    state :say_youre_not_alone
    state :say_it_was_hard
    state :say_story_7
    state :get_story_7_response
    state :say_story_8
    state :get_story_8_response
    state :say_i_agree
    state :say_schools_arent_great
    state :say_story_9
    state :get_story_9_response
    # END STORY

    # START WHY WE'RE HERE
    state :say_why_1_from_story
    state :say_why_1_from_skip
    state :get_why_1_response
    state :say_exactly
    state :say_good_guess
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
    state :say_glad_youre_on_board
    state :say_fair_enough
    # END WHY WE'RE HERE

    # START HOW IT WORKS 
    state :say_how_1
    state :get_how_1_response
    state :say_how_2
    state :get_how_2_response
    state :say_me_too
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
    state :end_day_1
    # END PROFILE SETTING
  end

  flow :catch_all do
    state :level1
  end

end
