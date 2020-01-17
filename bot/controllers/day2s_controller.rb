class Day2sController < BotController


  # ################################################
  # INTRO
  # ################################################
  def say_hello
    send_replies
    update_session_to state: 'get_hello_response'
  end

  def get_hello_response
    step_to state: 'say_intro_1'
  end

  def say_intro_1
    send_replies
    update_session_to state: 'get_intro_1_response'
  end

  def get_intro_1_response
    puts current_message.message
    if current_message.message == '::thumbs up::'
      step_to state: 'say_profile_1_from_thumbs_up'
    elsif current_message.message == '::thumbs down::'
      step_to state: 'say_offer_to_help'
    else
      step_to state: 'say_offer_animal'
    end
  end

  def say_offer_animal
    send_replies
    update_session_to state: 'get_offer_animal_response'
  end

  def get_offer_animal_response
    if current_message.message == 'Nah'
      step_to state: 'say_profile_1_from_no_animal'
    else
      step_to state: 'say_animal'
    end
  end

  def say_offer_to_help
    send_replies
    update_session_to state: 'get_offer_to_help_response'
  end

  def get_offer_to_help_response
    if current_message.message == 'Cute animal'
      step_to state: 'say_animal'
    elsif current_message.message == 'Helpful quote'
      step_to state: 'say_helpful_quote'
    else
      step_to state: 'say_profile_1_from_no_help'
    end
  end

  def say_animal
    send_replies
    update_session_to state: 'get_animal_response'
  end

  def get_animal_response
    step_to state: 'say_profile_1_from_animal'
  end

  def say_helpful_quote
    send_replies
    update_session_to state: 'get_helpful_quote_response'
  end

  def get_helpful_quote_response
    step_to state: 'say_profile_1_from_helpful_quote'
  end


  # ################################################
  # PROFILE SETTING
  # ################################################
  def say_profile_1_from_thumbs_up
    send_replies
    update_session_to state: 'get_profile_1_response'
  end

  def say_profile_1_from_no_animal
    send_replies
    update_session_to state: 'get_profile_1_response'
  end

  def say_profile_1_from_animal
    send_replies
    update_session_to state: 'get_profile_1_response'
  end

  def say_profile_1_from_helpful_quote
    send_replies
    update_session_to state: 'get_profile_1_response'
  end

  def say_profile_1_from_no_help
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
    if current_message.message == 'Skip'
      step_to state: 'say_profile_4_from_first_skip'
    else
      step_to state: 'say_profile_3'
    end
  end

  def say_profile_3
    send_replies
    update_session_to state: 'get_profile_3_response'
  end

  def get_profile_3_response
    if current_message.message == 'Skip'
      step_to state: 'say_profile_4_from_second_skip'
    elsif current_message.message == '1'
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
    if current_message.message == 'Skip'
      step_to state: 'say_profile_4_from_skip_multi_children'
    else
      step_to state: 'say_profile_4_from_multi_children'
    end
  end

  def say_profile_4_from_first_skip
    send_replies
    update_session_to state: 'get_profile_4_response'
  end

  def say_profile_4_from_second_skip
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

  def say_profile_4_from_skip_multi_children
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
    step_to state: 'say_lesson_1'
  end


  # ################################################
  # TODAY'S LESSON
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
    if current_message.message == 'How do I pronounce that?'
      step_to state: 'say_how_to_pronounce'
    else
      step_to state: 'say_lesson_3'
    end
  end

  def say_how_to_pronounce
    send_replies
    update_session_to state: 'get_how_to_pronounce_response'
  end

  def get_how_to_pronounce_response
    step_to state: 'say_lesson_3_from_how_to_pronounce'
  end

  def say_lesson_3_from_how_to_pronounce
    send_replies
    update_session_to state: 'get_lesson_3_response'
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
    step_to state: 'say_lesson_9'
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
    if current_message.message == 'Sure'
      step_to state: 'say_share_article'
    else
      step_to state: 'say_lesson_complete_from_no_article'
    end
  end

  def say_share_article
    send_replies
    update_session_to state: 'get_share_article_response'
  end

  def get_share_article_response
    step_to state: 'say_lesson_complete_from_article'
  end

  def say_lesson_complete_from_no_article
    send_replies
    update_session_to state: 'get_lesson_complete_response'
  end

  def say_lesson_complete_from_article
    send_replies
    update_session_to state: 'get_lesson_complete_response'
  end

  def get_lesson_complete_response
    step_to state: 'say_quiz_1'
  end


  # ################################################
  # QUIZ
  # ################################################
  def say_quiz_1
    send_replies
    update_session_to state: 'get_quiz_1_response'
  end

  def get_quiz_1_response
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
    step_to state: 'say_quiz_6'
  end

  def say_quiz_6
    send_replies
    update_session_to state: 'get_quiz_6_response'
  end

  def get_quiz_6_response
    step_to state: 'say_quiz_7'
  end

  def say_quiz_7
    send_replies
    update_session_to state: 'get_quiz_7_response'
  end

  def get_quiz_7_response
    step_to state: 'say_quiz_8'
  end

  def say_quiz_8
    send_replies
    update_session_to state: 'get_quiz_8_response'
  end

  def get_quiz_8_response
    if current_message.message == 'Sure'
      step_to state: 'say_share_video'
    else
      step_to state: 'say_quiz_9_from_no_video'
    end
  end

  def say_share_video
    send_replies
    update_session_to state: 'get_share_video_response'
  end

  def get_share_video_response
    step_to state: 'say_quiz_9_from_video'
  end

  def say_quiz_9_from_no_video
    send_replies
    update_session_to state: 'get_quiz_9_response'
  end

  def say_quiz_9_from_video
    send_replies
    update_session_to state: 'get_quiz_9_response'
  end

  def get_quiz_9_response
    step_to state: 'say_quiz_10'
  end

  def say_quiz_10
    send_replies
    update_session_to state: 'get_quiz_10_response'
  end

  def get_quiz_10_response
    step_to state: 'say_quiz_11'
  end

  def say_quiz_11
    send_replies
    update_session_to state: 'get_quiz_11_response'
  end

  def get_quiz_11_response
    if current_message.message == 'Tell me more'
      step_to state: 'say_share_article_2'
    else
      step_to state: 'say_wrap_up_1_no_article'
    end
  end

  def say_share_article_2
    send_replies
    update_session_to state: 'get_share_article_2_response'
  end

  def get_share_article_2_response
    step_to state: 'say_wrap_up_1_article'
  end

  # ################################################
  # WRAP UP
  # ################################################
  def say_wrap_up_1_no_article
    send_replies
    update_session_to state: 'get_wrap_up_1_response'
  end

  def say_wrap_up_1_article
    send_replies
    update_session_to state: 'get_wrap_up_1_response'
  end

  def get_wrap_up_1_response

  end

end
