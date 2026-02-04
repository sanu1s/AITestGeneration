Feature: Order Tracking - Loading State Message Display

  Scenario: Verify 'One moment...' message is displayed after tracking an invalid order
    Given User is on the order tracking page
    When User enters order number "ORD-INVALID-999"
    And User clicks the "Track Order" button
    Then The status message should display "One moment while I look into this for you."
