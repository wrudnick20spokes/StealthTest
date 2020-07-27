class Day6sController < BotController

  def flow_map
    Day6Flow::DAY_6_FLOWS
  end

  def say_goodbye
    send_replies
  end
end
