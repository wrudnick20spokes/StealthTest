class BotController < Stealth::Controller

  helper :all

  def route
    if current_message.message.include? "SKIP_TO"
      split_string = current_message.message.split(':')
      last_flow = split_string[1]
      last_state = split_string[2]
      step_to flow: last_flow, state: last_state
    elsif current_message.message.include? "TELL_USER_CONTENT_UNLOCKED"
      step_to flow: "helper", state: "say_content_unlocked"
    elsif current_message.message.include? "ASK_TO_CATCH_UP"
      step_to flow: "catch_up", state: "start_catch_up"
    elsif current_message.message.include? "INCOMPLETE_DAY"
      day_number = current_message.message.partition(':').last
      step_to flow: "incomplete_day", state: "day_#{day_number}_hello"
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
        step_to flow: "day1", state: "say_hello"
      end
    end
  end
end
