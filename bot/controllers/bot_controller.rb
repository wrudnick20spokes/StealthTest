class BotController < Stealth::Controller

  helper :all

  def route
    if current_message.message.include? "INCOMPLETE_DAY"
      day_number = current_message.message.partition(':').last
      step_to flow: "incomplete_days", state: "day_#{day_number}"
    elsif current_message.message.include? "TOO_EARLY"
      step_to flow: "helper", state: "say_too_early"
    elsif current_message.message.include? "FORCING_DAY"
      day_number = current_message.message.partition(':').last
      step_to flow: "day#{day_number}", state: "say_hello"
    elsif current_message.message.include? "STARTING_DAY"
      day_number = current_message.message.partition(':').last
      step_to flow: "day#{day_number}", state: "say_hello"
    elsif current_message.message.include? "RESUMING_DAY" and current_session.present?
      step_to session: current_session - 1.states
    else
      if current_session.present?
        step_to session: current_session
      else
        step_to flow: "day2", state: "say_hello"
      end
    end
  end
end
