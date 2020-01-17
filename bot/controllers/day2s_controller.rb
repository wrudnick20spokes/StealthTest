class Day2sController < BotController

  # INTRO
  def say_hello
    send_replies
    update_session_to state: get_hello_response
  end

  def get_hello_response
    step_to state: say_intro_1
  end

  def say_intro_1
    send_replies
    update_session_to state: get_intro_1_response
  end

  def get_intro_1_response
    puts current_message.message
    step_to state: say_intro_2
  end

end
