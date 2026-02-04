Feature: Customer Support Initial Routing Prompt Verification (Positive Test Cases)

  Scenario: Verify key phrases of the routing prompt are displayed
    Given User is on the "Customer Support" page
    Then The page should contain the text "speak with a customer care representative"
    And The page should contain the text "route you to the correct department"
