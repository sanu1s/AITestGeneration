Feature: AI Bot Welcome Message Validation (Negative Cases)

  Scenario: Verify bot does not identify as a generic support agent
    Given User is on the application home page
    Then The status message result should not contain "Generic Support Agent"
