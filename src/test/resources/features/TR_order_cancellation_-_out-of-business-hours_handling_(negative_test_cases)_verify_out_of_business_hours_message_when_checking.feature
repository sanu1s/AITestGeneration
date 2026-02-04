Feature: Order Cancellation - Out-of-Business-Hours Handling (Negative Test Cases)

  Scenario: Verify out-of-business-hours message when checking representative availability for cancellation
    Given User is logged in and needs order cancellation assistance
    When User checks the status of live support availability
    Then The informational message should state "Unfortunately, we are currently outside of our business hours, so I can't connect you to a care representative right now."
