class HellosController < BotController

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
    step_to state: 'say_intro_4'
  end

  def say_intro_4
    send_replies
    update_session_to state: 'get_intro_4_response'
  end

  def get_intro_4_response
    if current_message.message == 'Smart!'
      step_to state: 'say_who_me'
    else
      step_to state: 'say_intro_5'
    end
  end

  def say_who_me
    send_replies
    step_to state: 'say_intro_5'
  end

  def say_intro_5
    send_replies
    update_session_to state: 'get_intro_5_response'
  end

  def get_intro_5_response
    step_to state: 'say_offer_story'
  end

  def say_offer_story
    send_replies
    update_session_to state: 'get_story_offer_response'
  end

  def get_story_offer_response
    if current_message.message == 'Go ahead'
      step_to state: 'say_story_1'
    else
      step_to state: 'say_why_1_from_skip'
    end
  end

  def say_story_1
    send_replies
    update_session_to state: 'get_story_1_response'
  end

  def get_story_1_response
    if current_message.message == 'A big moment!'
      step_to state: 'say_ikr'
    else    
      step_to state: 'say_story_2'
    end
  end

  def say_ikr
    send_replies
    step_to state: 'say_story_2'
  end

  def say_story_2
    send_replies
    update_session_to state: 'get_story_2_response'
  end

  def get_story_2_response
    step_to state: 'say_story_3'
  end

  def say_story_3
    send_replies
    update_session_to state: 'get_story_3_response'
  end

  def get_story_3_response
    step_to state: 'say_story_4'
  end

  def say_story_4
    send_replies
    update_session_to state: 'get_story_4_response'
  end

  def get_story_4_response
    step_to state: 'say_story_5'
  end

  def say_story_5
    send_replies
    update_session_to state: 'get_story_5_response'
  end

  def get_story_5_response
    step_to state: 'say_story_6'
  end

  def say_story_6
    send_replies
    update_session_to state: 'get_story_6_response'
  end

  def get_story_6_response
    if current_message.message == 'I can relate.'
      step_to state: 'say_youre_not_alone'
    else
      step_to state: 'say_it_was_hard'
    end
  end

  def say_youre_not_alone
    send_replies
    step_to state: 'say_story_7'
  end

  def say_it_was_hard
    send_replies
    step_to state: 'say_story_7'
  end

  def say_story_7
    send_replies
    update_session_to state: 'get_story_7_response'
  end

  def get_story_7_response
    step_to state: 'say_story_8'
  end

  def say_story_8
    send_replies
    update_session_to state: 'get_story_8_response'
  end

  def get_story_8_response
    if current_message.message == 'Awful!'
      step_to state: 'say_i_agree'
    else
      step_to state: 'say_schools_arent_great'
    end
  end

  def say_i_agree
    send_replies
    step_to state: 'say_story_9'
  end

  def say_schools_arent_great
    send_replies
    step_to state: 'say_story_9'
  end

  def say_story_9
    send_replies
    update_session_to state: 'get_story_9_response'
  end

  def get_story_9_response
    step_to state: 'say_why_1_from_story'
  end

  def say_why_1_from_story
    send_replies
  end

  def say_why_1_from_skip
    send_replies
  end

end
