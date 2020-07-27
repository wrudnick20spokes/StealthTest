class BotController < Stealth::Controller

  helper :all

  def route
    if current_message.message.include? "SKIPPING_TO_DAY"
      day_number = current_message.message.partition(':').last
      step_to flow: "day#{day_number}", state: "say_hello_from_skip"
    elsif current_message.message.include? "SKIP_TO"
      split_string = current_message.message.split(':')
      last_flow = split_string[1]
      last_state = split_string[2]
      step_to flow: last_flow, state: last_state
    elsif current_message.message.include? "TELL_USER_CONTENT_UNLOCKED"
      step_to flow: "helper", state: "say_content_unlocked"
    elsif current_message.message.include? "ASK_TO_CATCH_UP"
      step_to flow: "catch_up", state: "start_catch_up"
    elsif current_message.message.include? "INCOMPLETE_DAY"
      split_string = current_message.message.split(':')
      day_number = split_string[1].to_i
      days_behind = split_string[2].to_i
      day = day_number + days_behind
      step_to flow: "incomplete_day", state: "day_#{day}_hello"
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

  def payload_hash
    @payload_hash ||= JSON.parse(current_message.payload.gsub("=>", ":"))
  end

  def method_missing(m, *args, &block)
    if m.to_s.starts_with?("say_")
      send_replies
      update_session_to state: flow_map[m][:next]
    elsif m.to_s.starts_with?("get_")
      router = flow_map[m][:next]
      step_to state: get_next_state(router)
    else
      super
    end
  end

  def get_next_state(router)
    if router.is_a? String
      # If it's a string then we just route to it
      router
    else
      # Otherwise we will do some logic to determine which route the user should go to
      detect_match(router)
    end
  end

  def detect_match(router)
    matching_state = ""

    router.each do |key, value|
      if key[/^message=(.+)$/, 1]
        # Check the string against what the actual message sent was
        string_to_check = key[/^message=(.+)$/, 1]

        matching_state = value if string_to_check == current_message.message
      elsif key[/^payload\[\:(.+)\]=(.+)$/, 1]
        # Figure out what the payload field we're supposed to check against
        string_to_check = key.split("=").last
        payload_field = key[/^payload\[\:(.+)\]=(.+)$/, 1]

        matching_state = value if payload_hash[payload_field] == string_to_check
      elsif key == current_message.message
        matching_state = value
      end
    end

    matching_state
  end

end
