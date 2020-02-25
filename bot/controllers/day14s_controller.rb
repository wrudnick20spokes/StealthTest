class Day14sController < BotController

  def method_missing(m, *args, &block)
    if m.to_s.starts_with?("say_")
      send_replies
      update_session_to state: Day14Flow::DAY_14_FLOWS[m][:next]
    elsif m.to_s.starts_with?("get_")
      next_state = Day14Flow::DAY_14_FLOWS[m][:next]
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

  def review_knowledge_router
    if !current_message.payload.present?
      step_to state: 'say_knowledge_none'
    elsif current_message.payload.to_i < current_message.message.to_i
      step_to state: 'say_knowledge_higher'
    elsif current_message.payload.to_i > current_message.message.to_i
      step_to state: 'say_knowledge_lower'
    else
      step_to state: 'say_knowledge_same'
    end
  end

  def say_knowledge_higher
    send_replies
    update_session_to state: 'get_comfort_response'
  end

  def say_knowledge_none
    send_replies
    update_session_to state: 'get_comfort_response'
  end

  def say_knowledge_same
    send_replies
    update_session_to state: 'get_knowledge_follow_up'
  end

  def say_knowledge_lower
    send_replies
    update_session_to state: 'get_knowledge_follow_up'
  end

  def get_knowledge_follow_up
    step_to state: 'say_comfort_question'
  end

  def say_comfort_question
    send_replies
    update_session_to state: 'get_comfort_response'
  end

  def get_comfort_response
    if !current_message.payload.present?
      step_to state: 'say_comfort_none'
    elsif current_message.payload.to_i < current_message.message.to_i
      step_to state: 'say_comfort_higher'
    elsif current_message.payload.to_i > current_message.message.to_i
      step_to state: 'say_comfort_lower'
    else
      step_to state: 'say_comfort_same'
    end
  end

  def say_comfort_higher
    send_replies
    update_session_to state: 'get_importance_response'
  end

  def say_comfort_none
    send_replies
    update_session_to state: 'get_importance_response'
  end

  def say_comfort_same
    send_replies
    update_session_to state: 'get_comfort_follow_up'
  end

  def say_comfort_lower
    send_replies
    update_session_to state: 'get_comfort_follow_up'
  end

  def get_comfort_follow_up
    step_to state: 'say_importance_question'
  end

  def say_importance_question
    send_replies
    update_session_to state: 'get_importance_response'
  end
end
