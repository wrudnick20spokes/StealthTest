class BotController < Stealth::Controller

  helper :all

  def route
    if current_session.present? and current_session.state_string != 'say_goodbye'
      step_to session: current_session
    else
      step_to flow: 'hello', state: 'say_hello'
    end
  end

end
