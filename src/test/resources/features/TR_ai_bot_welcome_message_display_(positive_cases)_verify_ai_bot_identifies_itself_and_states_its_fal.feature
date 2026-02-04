Feature: AI Bot Welcome Message Display (Positive Cases)

  Scenario: Verify AI Bot identifies itself and states its fallback mechanism
    Given User is on the application home page
    Then The status message result should contain "AI Bot Assistant"
    And The status message result should contain "connect you with an agent"
