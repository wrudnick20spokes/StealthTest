class BotController < Stealth::Controller

  helper :all

  def route
    if current_message.message == "ENTERING_APPLICATION" and current_session.present?
      update_session_to session: current_session
    elsif current_session.present?
      step_to session: current_session
    else
      update_session_to flow: 'hello', state: 'say_hello'
    end
  end

end
