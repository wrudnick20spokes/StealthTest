class Day10sController < BotController

  def flow_map
    Day10Flow::DAY_10_FLOWS
  end

  def say_goodbye
    send_replies
  end
end
