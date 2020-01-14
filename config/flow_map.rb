class FlowMap

  include Stealth::Flow

  flow :hello do
    state :say_hello
  end

  flow :catch_all do
    state :level1
  end

end
