Feature: Order Tracking - Negative Scenarios (External Resolution Required)

  Scenario: Verify system advises user to contact their bank for charge details
    Given User is on the order tracking page
    When User enters order number "BANK_QUERY_789"
    And User clicks the Track Order button
    Then The status message should display "You would have to ask your bank."
