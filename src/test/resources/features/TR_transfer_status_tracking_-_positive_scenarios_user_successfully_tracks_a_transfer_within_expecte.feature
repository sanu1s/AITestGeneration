Feature: Transfer Status Tracking - Positive Scenarios

  Scenario: User successfully tracks a transfer within expected timeframe
    Given User is on the order tracking page
    When User enters order number "TRN_ONTIME_002"
    And User clicks the "Track Order" button
    Then The status message should display "Your transfer 'TRN_ONTIME_002' is in progress and expected to complete in 4-5 minutes."
