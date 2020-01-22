class Day4sController < BotController

  def say_hello
    send_replies
    update_session_to state: 'get_hello_response'
  end

  def say_hello_from_skip
    send_replies
    update_session_to state: 'get_hello_response'
  end

  def get_hello_response
    step_to state: 'say_goodbye'
  end

  def say_goodbye
    send_replies
  end
end
