class Day8sController < BotController

  def flow_map
    Day8Flow::DAY_8_FLOWS
  end

  def say_goodbye
    send_replies
  end
end
