Feature: Customer Support - Positive Scenarios

  Scenario: Confirm immediate transfer after requesting assistance
    Given User has navigated to the help center
    When User selects the option to "Get Live Support"
    Then A system message confirms "Agents are available to assist you right now. I'll transfer you to a customer care representative immediately."
