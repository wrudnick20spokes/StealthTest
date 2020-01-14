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
    puts current_message.message
    if current_message.message == '[thumbs up]'
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

  end
end
