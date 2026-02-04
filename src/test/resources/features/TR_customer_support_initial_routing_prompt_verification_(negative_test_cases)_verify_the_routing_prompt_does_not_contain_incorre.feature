Feature: Customer Support Initial Routing Prompt Verification (Negative Test Cases)

  Scenario: Verify the routing prompt does not contain incorrect representative type
    Given User is on the "Customer Support" page
    Then The page should not display the message "I understand that you would to speak with a sales representative."
