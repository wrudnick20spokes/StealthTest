class FlowMap

  include Stealth::Flow

  flow :hello do
    # START HELLO BRANCH
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
    state :say_who_me
    state :say_intro_5
    state :get_intro_5_response
    state :say_offer_story
    state :get_story_offer_response
    # END HELLO BRANCH

    # START STORY BRANCH
    state :say_story_1
    state :get_story_1_response
    state :say_ikr
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
    # END STORY BRANCH

    # START WHY WE'RE HERE BRANCH
    state :say_why_1_from_story
    state :say_why_1_from_skip

  end

  flow :catch_all do
    state :level1
  end

end
