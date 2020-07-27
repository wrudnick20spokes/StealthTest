class Day13sController < BotController

  def flow_map
    Day13Flow::DAY_13_FLOWS
  end

  def say_goodbye
    send_replies
  end
end
