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
    update_session_to 'get_offer_to_help_response'
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

  end

end
