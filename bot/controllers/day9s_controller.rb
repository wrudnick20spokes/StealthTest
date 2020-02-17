class Day8sController < BotController

  def method_missing(m, *args, &block)
    if m.to_s.starts_with?("say_")
      send_replies
      update_session_to state: Day9Flow::DAY_9_FLOWS[m][:next]
    elsif m.to_s.starts_with?("get_")
      next_state = Day9Flow::DAY_9_FLOWS[m][:next]
      if next_state.is_a? String
        step_to state: next_state
      else
        step_to state: next_state[current_message.message]
      end
    end
  end

  def say_goodbye
    send_replies
  end
end
