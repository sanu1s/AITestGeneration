Feature: AI Bot Welcome Message Validation (Negative Cases)

  Scenario: Verify no error message is displayed on successful bot load
    Given User is on the application home page
    Then The error message should not be visible
