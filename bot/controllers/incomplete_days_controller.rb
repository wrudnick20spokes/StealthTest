class IncompleteDaysController < BotController

  def day_1_hello
    send_replies
    update_session_to state: 'get_day_1_hello_response'
  end

  def get_day_1_hello_response
    step_to state: 'offer_day_1_resume'
  end

  def offer_day_1_resume
    send_replies
    update_session_to state: 'get_offer_resume_response'
  end

  def day_2_hello
    send_replies
    update_session_to state: 'get_day_2_hello_response'
  end

  def get_day_2_hello_response
    step_to state: 'offer_day_2_resume'
  end

  def offer_day_2_resume
    send_replies
    update_session_to state: 'get_offer_resume_response'
  end

  def day_3_hello
    send_replies
    update_session_to state: 'get_day_3_hello_response'
  end

  def get_day_3_hello_response
    step_to state: 'offer_day_3_resume'
  end

  def offer_day_3_resume
    send_replies
    update_session_to state: 'get_offer_resume_response'
  end

  def day_4_hello
    send_replies
    update_session_to state: 'get_day_4_hello_response'
  end

  def get_day_4_hello_response
    step_to state: 'offer_day_4_resume'
  end

  def offer_day_4_resume
    send_replies
    update_session_to state: 'get_offer_resume_response'
  end

  def day_5_hello
    send_replies
    update_session_to state: 'get_day_5_hello_response'
  end

  def get_day_5_hello_response
    step_to state: 'offer_day_5_resume'
  end

  def offer_day_5_resume
    send_replies
    update_session_to state: 'get_offer_resume_response'
  end

  def day_6_hello
    send_replies
    update_session_to state: 'get_day_6_hello_response'
  end

  def get_day_6_hello_response
    step_to state: 'offer_day_6_resume'
  end

  def offer_day_6_resume
    send_replies
    update_session_to state: 'get_offer_resume_response'
  end

  def day_7_hello
    send_replies
    update_session_to state: 'get_day_7_hello_response'
  end

  def get_day_7_hello_response
    step_to state: 'offer_day_7_resume'
  end

  def offer_day_7_resume
    send_replies
    update_session_to state: 'get_offer_resume_response'
  end

  def day_8_hello
    send_replies
    update_session_to state: 'get_day_8_hello_response'
  end

  def get_day_8_hello_response
    step_to state: 'offer_day_8_resume'
  end

  def offer_day_8_resume
    send_replies
    update_session_to state: 'get_offer_resume_response'
  end

  def day_9_hello
    send_replies
    update_session_to state: 'get_day_9_hello_response'
  end

  def get_day_9_hello_response
    step_to state: 'offer_day_9_resume'
  end

  def offer_day_9_resume
    send_replies
    update_session_to state: 'get_offer_resume_response'
  end

  def day_10_hello
    send_replies
    update_session_to state: 'get_day_10_hello_response'
  end

  def get_day_10_hello_response
    step_to state: 'offer_day_10_resume'
  end

  def offer_day_10_resume
    send_replies
    update_session_to state: 'get_offer_resume_response'
  end

  def day_11_hello
    send_replies
    update_session_to state: 'get_day_11_hello_response'
  end

  def get_day_11_hello_response
    step_to state: 'offer_day_11_resume'
  end

  def offer_day_11_resume
    send_replies
    update_session_to state: 'get_offer_resume_response'
  end

  def day_12_hello
    send_replies
    update_session_to state: 'get_day_12_hello_response'
  end

  def get_day_12_hello_response
    step_to state: 'offer_day_12_resume'
  end

  def offer_day_12_resume
    send_replies
    update_session_to state: 'get_offer_resume_response'
  end

  def get_offer_resume_response

  end

end
