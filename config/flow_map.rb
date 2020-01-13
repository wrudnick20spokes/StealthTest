class FlowMap

  include Stealth::Flow

  flow :hello do
    state :say_hello, redirects_to: :ask_name
    state :ask_name
    state :get_name, fails_to: :ask_name
    state :say_wow
    state :say_bye, redirects_to: 'goodbye->say_goodbye'
  end

  flow :goodbye do
    state :say_goodbye
  end

  flow :catch_all do
    state :level1
  end

end
