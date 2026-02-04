Feature: Order Tracking System - Customer Service Prompts

  Scenario: Verify Generic Assistance Prompt in Result Area
    Given the user is on the order tracking page
    When the user enters order number "GENERIC_PROMPT_ORDER"
    And clicks the "Track Order" button
    Then the result message should display "Did you have any other questions or is there anything else I can assist you with today?"
