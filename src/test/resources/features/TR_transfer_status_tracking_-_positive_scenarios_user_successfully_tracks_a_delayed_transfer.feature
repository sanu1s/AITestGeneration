Feature: Transfer Status Tracking - Positive Scenarios

  Scenario: User successfully tracks a delayed transfer
    Given User is on the order tracking page
    When User enters order number "TRN_DELAYED_001"
    And User clicks the "Track Order" button
    Then The status message should display "Your transfer 'TRN_DELAYED_001' is in progress, experiencing a delay. It's been 20 minutes, expected 4-5 minutes."
