class CatchUpsController < BotController

  def start_catch_up
    split_string = current_message.message.split(':')
    day_number = split_string[1]
    days_behind = split_string[2].to_i
    if days_behind > 2
      step_to state: "catch_up_several_chats_#{day_number}"
    elsif
      step_to state: "catch_up_a_couple_chats_#{day_number}"
    else
      step_to state: "catch_up_one_chat_#{day_number}"
    end
  end

  # DAY 1
  def catch_up_several_chats_1
    send_replies
    update_session_to state: 'get_catch_up_response_1'
  end

  def catch_up_a_couple_chats_1
    send_replies
    update_session_to state: 'get_catch_up_response_1'
  end

  def catch_up_one_chat_1
    send_replies
    update_session_to state: 'get_catch_up_response_1'
  end

  def get_catch_up_response_1
    if current_message.message == "Let’s do it"
      step_to flow: 'day2', state: 'say_hello_from_catch_up'
    else
      step_to state: 'done_for_today'
    end
  end

  # DAY 2
  def catch_up_several_chats_2
    send_replies
    update_session_to state: 'get_catch_up_response_2'
  end

  def catch_up_a_couple_chats_2
    send_replies
    update_session_to state: 'get_catch_up_response_2'
  end

  def catch_up_one_chat_2
    send_replies
    update_session_to state: 'get_catch_up_response_2'
  end

  def get_catch_up_response_2
    if current_message.message == "Let’s do it"
      step_to flow: 'day3', state: 'say_hello_from_catch_up'
    else
      step_to state: 'done_for_today'
    end
  end

  # DAY 3
  def catch_up_several_chats_3
    send_replies
    update_session_to state: 'get_catch_up_response_3'
  end

  def catch_up_a_couple_chats_3
    send_replies
    update_session_to state: 'get_catch_up_response_3'
  end

  def catch_up_one_chat_3
    send_replies
    update_session_to state: 'get_catch_up_response_3'
  end

  def get_catch_up_response_3
    if current_message.message == "Let’s do it"
      step_to flow: 'day4', state: 'say_hello_from_catch_up'
    else
      step_to state: 'done_for_today'
    end
  end

  # DAY 4
  def catch_up_several_chats_4
    send_replies
    update_session_to state: 'get_catch_up_response_4'
  end

  def catch_up_a_couple_chats_4
    send_replies
    update_session_to state: 'get_catch_up_response_4'
  end

  def catch_up_one_chat_4
    send_replies
    update_session_to state: 'get_catch_up_response_4'
  end

  def get_catch_up_response_4
    if current_message.message == "Let’s do it"
      step_to flow: 'day5', state: 'say_hello_from_catch_up'
    else
      step_to state: 'done_for_today'
    end
  end

  # DAY 5
  def catch_up_several_chats_5
    send_replies
    update_session_to state: 'get_catch_up_response_5'
  end

  def catch_up_a_couple_chats_5
    send_replies
    update_session_to state: 'get_catch_up_response_5'
  end

  def catch_up_one_chat_5
    send_replies
    update_session_to state: 'get_catch_up_response_5'
  end

  def get_catch_up_response_5
    if current_message.message == "Let’s do it"
      step_to flow: 'day6', state: 'say_hello_from_catch_up'
    else
      step_to state: 'done_for_today'
    end
  end

  # DAY 6
  def catch_up_several_chats_6
    send_replies
    update_session_to state: 'get_catch_up_response_6'
  end

  def catch_up_a_couple_chats_6
    send_replies
    update_session_to state: 'get_catch_up_response_6'
  end

  def catch_up_one_chat_6
    send_replies
    update_session_to state: 'get_catch_up_response_6'
  end

  def get_catch_up_response_6
    if current_message.message == "Let’s do it"
      step_to flow: 'day7', state: 'say_hello_from_catch_up'
    else
      step_to state: 'done_for_today'
    end
  end

  # DAY 7
  def catch_up_several_chats_7
    send_replies
    update_session_to state: 'get_catch_up_response_7'
  end

  def catch_up_a_couple_chats_7
    send_replies
    update_session_to state: 'get_catch_up_response_7'
  end

  def catch_up_one_chat_7
    send_replies
    update_session_to state: 'get_catch_up_response_7'
  end

  def get_catch_up_response_7
    if current_message.message == "Let’s do it"
      step_to flow: 'day8', state: 'say_hello_from_catch_up'
    else
      step_to state: 'done_for_today'
    end
  end

  # DAY 8
  def catch_up_several_chats_8
    send_replies
    update_session_to state: 'get_catch_up_response_8'
  end

  def catch_up_a_couple_chats_8
    send_replies
    update_session_to state: 'get_catch_up_response_8'
  end

  def catch_up_one_chat_8
    send_replies
    update_session_to state: 'get_catch_up_response_8'
  end

  def get_catch_up_response_8
    if current_message.message == "Let’s do it"
      step_to flow: 'day9', state: 'say_hello_from_catch_up'
    else
      step_to state: 'done_for_today'
    end
  end

  # DAY 9
  def catch_up_several_chats_9
    send_replies
    update_session_to state: 'get_catch_up_response_9'
  end

  def catch_up_a_couple_chats_9
    send_replies
    update_session_to state: 'get_catch_up_response_9'
  end

  def catch_up_one_chat_9
    send_replies
    update_session_to state: 'get_catch_up_response_9'
  end

  def get_catch_up_response_9
    if current_message.message == "Let’s do it"
      step_to flow: 'day10', state: 'say_hello_from_catch_up'
    else
      step_to state: 'done_for_today'
    end
  end

  # DAY 10
  def catch_up_several_chats_10
    send_replies
    update_session_to state: 'get_catch_up_response_10'
  end

  def catch_up_a_couple_chats_10
    send_replies
    update_session_to state: 'get_catch_up_response_10'
  end

  def catch_up_one_chat_10
    send_replies
    update_session_to state: 'get_catch_up_response_10'
  end

  def get_catch_up_response_10
    if current_message.message == "Let’s do it"
      step_to flow: 'day11', state: 'say_hello_from_catch_up'
    else
      step_to state: 'done_for_today'
    end
  end

  # DAY 11
  def catch_up_several_chats_11
    send_replies
    update_session_to state: 'get_catch_up_response_11'
  end

  def catch_up_a_couple_chats_11
    send_replies
    update_session_to state: 'get_catch_up_response_11'
  end

  def catch_up_one_chat_11
    send_replies
    update_session_to state: 'get_catch_up_response_11'
  end

  def get_catch_up_response_11
    if current_message.message == "Let’s do it"
      step_to flow: 'day12', state: 'say_hello_from_catch_up'
    else
      step_to state: 'done_for_today'
    end
  end

  # DAY 12
  def catch_up_several_chats_12
    send_replies
    update_session_to state: 'get_catch_up_response_12'
  end

  def catch_up_a_couple_chats_12
    send_replies
    update_session_to state: 'get_catch_up_response_12'
  end

  def catch_up_one_chat_12
    send_replies
    update_session_to state: 'get_catch_up_response_12'
  end

  def get_catch_up_response_12
    if current_message.message == "Let’s do it"
      step_to flow: 'day13', state: 'say_hello_from_catch_up'
    else
      step_to state: 'done_for_today'
    end
  end

  def done_for_today
    send_replies
    update_session_to state: 'get_done_for_today_response'
  end

  def get_done_for_today_response
    step_to state: 'say_goodbye'
  end

  def say_goodbye
    send_replies
  end
end
