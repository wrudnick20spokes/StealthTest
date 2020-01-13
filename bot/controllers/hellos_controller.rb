class HellosController < BotController

  def say_hello
    send_replies
  end

  def ask_name
    send_replies
    update_session_to state: 'get_name'
  end
  
  def get_name
    puts current_message.message
    step_to state: 'say_wow'
  end

  def say_wow
    send_replies
    step_to state: 'say_bye'
  end

  def say_bye
    send_replies
  end

  def get_current_message
    current_message.message
  end

end
