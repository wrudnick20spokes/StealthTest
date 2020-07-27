class Day12sController < BotController

  def flow_map
    Day12Flow::DAY_12_FLOWS
  end

  def say_goodbye
    send_replies
  end
end
