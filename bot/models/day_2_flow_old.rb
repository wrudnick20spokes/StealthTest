class Day2FlowOld
  DAY_2_FLOWS = {
    say_hello: { next: "get_hello_response" },
    get_hello_response: { next: 'say_intro_1'}
  }
end