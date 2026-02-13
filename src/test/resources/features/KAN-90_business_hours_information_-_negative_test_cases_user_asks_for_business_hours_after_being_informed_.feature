Feature: Business Hours Information - Negative Test Cases

  Scenario: User asks for business hours after being informed of unavailability
    Given the user navigates to the order tracking page
    When the user sends the message "What are business hours?"
    And the user clicks the Track Order button
    Then the bot should respond with "I understand how this situation may be frustrating. Unfortunately, it seems we are currently outside of our business hours. Is there anything else I can assist you with?"
    And the bot should not provide specific business hours information
