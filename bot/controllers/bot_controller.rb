class BotController < Stealth::Controller

  helper :all

  def route
    puts "START INCOMING MESSAGE"
    puts current_message.message
    puts "END INCOMING MESSAGE"
    if current_message.message == "ENTERING_APPLICATION"
      step_to flow: 'hello', state: 'say_hello'
    elsif current_session.present?
      step_to session: current_session
    else
      step_to flow: 'hello', state: 'say_hello'
    end
  end

end
