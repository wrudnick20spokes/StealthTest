class FlowMap

  include Stealth::Flow

  flow :hello do
    state :say_hello
    state :get_hello_response
    state :say_intro_1
    state :get_intro_1_response
    state :say_intro_2
    state :get_intro_2_response
    state :say_intro_3
    state :get_intro_3_response
    state :say_intro_4
    state :get_intor_4_response
    state :say_who_me
    state :say_intro_5
    state :get_intro_5_response
  end

  flow :catch_all do
    state :level1
  end

end
