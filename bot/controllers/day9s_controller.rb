class Day9sController < BotController

  def flow_map
    Day9Flow::DAY_9_FLOWS
  end

  def say_goodbye
    send_replies
  end
end
