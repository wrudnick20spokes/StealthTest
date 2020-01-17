class BotController < Stealth::Controller

  helper :all

  def route
    if current_message.message == 'ENTERING_APPLICATION' and current_session.present?
      step_to session: current_session - 1.states
    else
      if current_session.present?
        puts "SESSION PRESENT"
        step_to session: current_session
      else
        puts "SESSION PRESENT"
        step_to flow: 'day2', state: 'say_hello'
      end
    end
  end

end
