class Day3sController < BotController


  # ################################################
  # FROM SKIP
  # ################################################
  def say_hello_from_skip
    send_replies
    update_session_to state: 'get_hello_response'
  end


  # ################################################
  # FROM CATCH UP
  # ################################################
  def say_hello_from_catch_up
    send_replies
    update_session_to state: 'get_hello_response'
  end


  # ################################################
  # HELLO
  # ################################################
  def say_hello
    send_replies
    update_session_to state: 'get_hello_response'
  end

  def get_hello_response
    step_to state: 'say_profile_1'
  end

  # ################################################
  # PROFILE SETTING
  # ################################################
  def say_profile_1
    send_replies
    update_session_to state: 'get_profile_1_response'
  end

  def get_profile_1_response
    step_to state: 'say_profile_2'
  end

  def say_profile_2
    send_replies
    update_session_to state: 'get_profile_2_response'
  end

  def get_profile_2_response
    step_to state: 'say_profile_3'
  end

  def say_profile_3
    send_replies
    update_session_to state: 'get_profile_3_response'
  end

  def get_profile_3_response
    if current_message.message == '1'
      step_to state: 'say_ask_1_child'
    else 
      step_to state: 'say_ask_multi_children'
    end
  end

  def say_ask_1_child
    send_replies
    update_session_to state: 'get_ask_1_child_response'
  end

  def get_ask_1_child_response
    if current_message.message == 'Skip'
      step_to state: 'say_profile_4_from_skip_1_child'
    else
      step_to state: 'say_profile_4_from_1_child'
    end
  end

  def say_ask_multi_children
    send_replies
    update_session_to state: 'get_ask_multi_children_response'
  end

  def get_ask_multi_children_response
    step_to state: 'say_profile_4_from_multi_children'
  end

  def say_profile_4_from_first_skip
    send_replies
    update_session_to state: 'get_profile_4_response'
  end

  def say_profile_4_from_skip_1_child
    send_replies
    update_session_to state: 'get_profile_4_response'
  end

  def say_profile_4_from_1_child
    send_replies
    update_session_to state: 'get_profile_4_response'
  end

  def say_profile_4_from_multi_children
    send_replies
    update_session_to state: 'get_profile_4_response'
  end

  def get_profile_4_response
    if current_message.message == 'Not really'
      step_to state: 'say_done_with_questions_from_not_really'
    else
      step_to state: 'say_ask_about_conversation'
    end
  end

  def say_ask_about_conversation
    send_replies
    update_session_to state: 'get_ask_about_conversation_response'
  end

  def get_ask_about_conversation_response
    if current_message.message.to_i > 3
      step_to state: 'say_thats_great'
    else
      step_to state: 'say_got_it'
    end
  end

  def say_thats_great
    send_replies
    update_session_to state: 'get_one_more_thing_response'
  end

  def say_got_it
    send_replies
    update_session_to state: 'get_got_it_response'
  end

  def get_got_it_response
    step_to state: 'say_one_more_thing'
  end

  def say_one_more_thing
    send_replies
    update_session_to state: 'get_one_more_thing_response'
  end

  def get_one_more_thing_response
    step_to state: 'say_ask_how_conversation_went'
  end

  def say_ask_how_conversation_went
    send_replies
    update_session_to state: 'get_ask_how_conversation_went_response'
  end

  def get_ask_how_conversation_went_response
    if current_message.message == 'Skip'
      step_to state: 'say_done_with_questions_from_skip'
    else
      step_to state: 'say_thank_you'
    end
  end

  def say_thank_you
    send_replies
    update_session_to state: 'get_conversation_evaluation'
  end

  def get_conversation_evaluation
    step_to state: 'say_done_with_questions_from_conversation_evaluation'
  end

  def say_done_with_questions_from_conversation_evaluation
    send_replies
    update_session_to state: 'get_done_with_questions_response'
  end

  def say_done_with_questions_from_skip
    send_replies
    update_session_to state: 'get_done_with_questions_response'
  end

  def say_done_with_questions_from_not_really
    send_replies
    update_session_to state: 'get_done_with_questions_response'
  end

  def get_done_with_questions_response
    step_to state: 'say_intro_1'
  end


  # ################################################
  # INTRO
  # ################################################
  def say_intro_1
    send_replies
    update_session_to state: 'get_intro_1_response'
  end

  def get_intro_1_response
    step_to state: 'say_intro_2'
  end

  def say_intro_2
    send_replies
    update_session_to state: 'get_intro_2_response'
  end

  def get_intro_2_response
    step_to state: 'say_intro_3'
  end

  def say_intro_3
    send_replies
    update_session_to state: 'get_intro_3_response'
  end

  def get_intro_3_response
    step_to state: 'say_quiz_1'
  end


  # ################################################
  # QUIZ
  # ################################################
  def say_quiz_1
    send_replies
    update_session_to state: 'get_quiz_1_repsonse'
  end

  def get_quiz_1_repsonse
    step_to state: 'say_quiz_2'
  end

  def say_quiz_2
    send_replies
    update_session_to state: 'get_quiz_2_response'
  end

  def get_quiz_2_response
    step_to state: 'say_quiz_3'
  end

  def say_quiz_3
    send_replies
    update_session_to state: 'get_quiz_3_response'
  end

  def get_quiz_3_response
    step_to state: 'say_quiz_4'
  end

  def say_quiz_4
    send_replies
    update_session_to state: 'get_quiz_4_response'
  end

  def get_quiz_4_response
    step_to state: 'say_quiz_5'
  end

  def say_quiz_5
    send_replies
    update_session_to state: 'get_quiz_5_response'
  end

  def get_quiz_5_response
    step_to state: 'say_lesson_1'
  end


  # ################################################
  # LESSON
  # ################################################
  def say_lesson_1
    send_replies
    update_session_to state: 'get_lesson_1_response'
  end

  def get_lesson_1_response
    step_to state: 'say_lesson_2'
  end

  def say_lesson_2
    send_replies
    update_session_to state: 'get_lesson_2_response'
  end

  def get_lesson_2_response
    step_to state: 'say_lesson_3'
  end

  def say_lesson_3
    send_replies
    update_session_to state: 'get_lesson_3_response'
  end

  def get_lesson_3_response
    step_to state: 'say_lesson_4'
  end

  def say_lesson_4
    send_replies
    update_session_to state: 'get_lesson_4_response'
  end

  def get_lesson_4_response
    step_to state: 'say_lesson_5'
  end

  def say_lesson_5
    send_replies
    update_session_to state: 'get_lesson_5_response'
  end

  def get_lesson_5_response
    step_to state: 'say_lesson_6'
  end

  def say_lesson_6
    send_replies
    update_session_to state: 'get_lesson_6_response'
  end

  def get_lesson_6_response
    step_to state: 'say_lesson_7'
  end

  def say_lesson_7
    send_replies
    update_session_to state: 'get_lesson_7_response'
  end

  def get_lesson_7_response
    step_to state: 'say_lesson_8'
  end

  def say_lesson_8
    send_replies
    update_session_to state: 'get_lesson_8_response'
  end

  def get_lesson_8_response
    if current_message.message == "No thanks"
      step_to state: 'say_lesson_9_from_skip'
    else
      step_to state: 'wait_for_article_1'
    end
  end

  def wait_for_article_1
    send_replies
    update_session_to state: 'get_wait_for_article_1_response'
  end

  def get_wait_for_article_1_response
    step_to state: 'say_lesson_9'
  end

  def say_lesson_9_from_skip
    send_replies
    update_session_to state: 'get_lesson_9_response'
  end

  def say_lesson_9
    send_replies
    update_session_to state: 'get_lesson_9_response'
  end

  def get_lesson_9_response
    step_to state: 'say_lesson_10'
  end

  def say_lesson_10
    send_replies
    update_session_to state: 'get_lesson_10_response'
  end

  def get_lesson_10_response
    step_to state: 'say_lesson_11'
  end

  def say_lesson_11
    send_replies
    update_session_to state: 'get_lesson_11_response'
  end

  def get_lesson_11_response
    step_to state: 'say_lesson_12'
  end

  def say_lesson_12
    send_replies
    update_session_to state: 'get_lesson_12_response'
  end

  def get_lesson_12_response
    step_to state: 'say_lesson_13'
  end

  def say_lesson_13
    send_replies
    update_session_to state: 'get_lesson_13_response'
  end

  def get_lesson_13_response
    if current_message.message == 'Up for a little more'
      step_to state: 'offer_topics_from_lesson'
    else
      step_to state: 'say_wrap_up_1_from_skip'
    end
  end


  # ################################################
  # OFFER TOPICS
  # ################################################
  def offer_topics_from_lesson
    send_replies
    update_session_to state: 'get_offer_topics_response'
  end

  def offer_topics_from_topic
    send_replies
    update_session_to state: 'get_offer_topics_response'
  end

  def get_offer_topics_response
    if current_message.message == 'First periods'
      step_to state: 'say_first_periods'
    elsif current_message.message == 'Menopause'
      step_to state: 'say_menopause'
    else
      step_to state: 'say_periods_and_birth_control'
    end
  end

  def say_first_periods
    send_replies
    update_session_to state: 'get_offer_more_topics_response'
  end

  def say_menopause
    send_replies
    update_session_to state: 'get_offer_more_topics_response'
  end

  def say_periods_and_birth_control
    send_replies
    update_session_to state: 'get_offer_more_topics_response'
  end

  def get_offer_more_topics_response
    if current_message.message == 'Back to topic list'
      step_to state: 'offer_topics_from_topic'
    else
      step_to state: 'say_wrap_up_1'
    end
  end


  # ################################################
  # WRAP UP // GOODBYE
  # ################################################
  def say_wrap_up_1_from_skip
    send_replies
    update_session_to state: 'get_wrap_up_1_response'
  end

  def say_wrap_up_1
    send_replies
    update_session_to state: 'get_wrap_up_1_response'
  end

  def get_wrap_up_1_response
    step_to state: 'say_wrap_up_2'
  end

  def say_wrap_up_2
    send_replies
    update_session_to state: 'get_wrap_up_2_response'
  end

  def get_wrap_up_2_response
    step_to state: 'say_wrap_up_3'
  end

  def say_wrap_up_3
    send_replies
    update_session_to state: 'get_wrap_up_3_response'
  end

  def get_wrap_up_3_response
    step_to state: 'say_goodbye'
  end

  def say_goodbye
    send_replies
  end
end
