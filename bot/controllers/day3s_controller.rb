class Day3sController < BotController

  def say_hello_from_skip
    send_replies
    update_session_to state: 'get_hello_response'
  end

  def say_hello_from_catch_up
    send_replies
    update_session_to state: 'get_hello_response'
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
      step_to state; 'say_wrap_up_1_from_skip'
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
