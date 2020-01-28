class Day2Flow
  DAY_2_FLOWS = {
    say_hello: { next: "get_hello_response" },
    get_hello_response: { next: 'say_intro_1'},
    say_intro_1: { next: 'get_intro_1_response'},
    get_intro_1_response: { next: {
      "::thumbs up::" => "say_profile_1_from_thumbs_up",
      "::thumbs down::" => "say_offer_to_help",
      "::shurg::" => "say_offer_aninmal"
    } }
  }
end