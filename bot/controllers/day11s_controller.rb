class Day11sController < BotController

  def flow_map
    Day11Flow::DAY_11_FLOWS
  end

  def say_goodbye
    send_replies
  end
end
