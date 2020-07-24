class Day7sController < BotController

  def flow_map
    Day7Flow::DAY_7_FLOWS
  end

  def say_goodbye
    send_replies
  end
end
