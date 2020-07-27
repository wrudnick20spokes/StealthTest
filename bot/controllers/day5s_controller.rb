class Day5sController < BotController

  def flow_map
    Day5Flow::DAY_5_FLOWS
  end

  def say_goodbye
    send_replies
  end
end
