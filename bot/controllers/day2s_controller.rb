class Day2sController < BotController


  # ################################################
  # FROM SKIP
  # ################################################
  def say_hello_from_skip
    send_replies
    update_session_to state: 'get_intro_1_response'
  end

  # ################################################
  # FROM CATCH UP
  # ################################################
  def say_hello_from_catch_up
    send_replies
    update_session_to state: 'get_intro_1_response'
  end

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
    if current_message.message == '::thumbs up::'
      step_to state: 'say_minion'
    elsif current_message.message == '::thumbs down::'
      step_to state: 'say_offer_to_help'
    else
      step_to state: 'say_offer_animal'
    end
  end

  def say_minion
    send_replies
    update_session_to state: 'get_minion_response'
  end

  def get_minion_response
    step_to state: 'say_lesson_1_from_thumbs_up'
  end

  def say_offer_animal
    send_replies
    update_session_to state: 'get_offer_animal_response'
  end

  def get_offer_animal_response
    if current_message.message == 'Nah'
      step_to state: 'say_lesson_1_from_no_animal'
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
      step_to state: 'say_lesson_1_from_no_help'
    end
  end

  def say_animal
    send_replies
    update_session_to state: 'get_animal_response'
  end

  def get_animal_response
    step_to state: 'say_lesson_1_from_animal'
  end

  def say_helpful_quote
    send_replies
    update_session_to state: 'get_helpful_quote_response'
  end

  def get_helpful_quote_response
    step_to state: 'say_lesson_1_from_helpful_quote'
  end

  # ################################################
  # TODAY'S LESSON
  # ################################################
  def say_lesson_1_from_thumbs_up
    send_replies
    update_session_to state: 'get_lesson_1_response'
  end

  def say_lesson_1_from_no_animal
    send_replies
    update_session_to state: 'get_lesson_1_response'
  end

  def say_lesson_1_from_animal
    send_replies
    update_session_to state: 'get_lesson_1_response'
  end

  def say_lesson_1_from_helpful_quote
    send_replies
    update_session_to state: 'get_lesson_1_response'
  end

  def say_lesson_1_from_no_help
    send_replies
    update_session_to state: 'get_lesson_1_response'
  end

  def get_lesson_1_response
    step_to state: 'say_lesson_1_1'
  end

  def say_lesson_1_1
    send_replies
    update_session_to state: 'get_lesson_1_1_response'
  end

  def get_lesson_1_1_response
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
      step_to state: 'say_wrap_up_1_no_video'
    end
  end

  def say_share_video
    send_replies
    update_session_to state: 'get_share_video_response'
  end

  def get_share_video_response
    step_to state: 'say_wrap_up_1'
  end

  # ################################################
  # WRAP UP
  # ################################################
  def say_wrap_up_1_no_video
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
    step_to state: 'say_wrap_up_4'
  end

  def say_wrap_up_4
    send_replies
    update_session_to state: 'get_wrap_up_4_response'
  end

  def get_wrap_up_4_response
    step_to state: 'say_goodbye'
  end

  def say_goodbye
    send_replies
  end

end
