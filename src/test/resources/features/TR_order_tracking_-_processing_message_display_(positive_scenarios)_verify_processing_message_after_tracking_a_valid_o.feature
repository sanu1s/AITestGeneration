Feature: Order Tracking - Processing Message Display (Positive Scenarios)

  Scenario: Verify processing message after tracking a valid order
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The status message should display "One moment while I look into this for you"
