class Day4sController < BotController

  def flow_map
    Day4Flow::DAY_4_FLOWS
  end

  def say_goodbye
    send_replies
  end
end
