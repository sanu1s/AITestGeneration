Feature: Order Tracking - Display of Intermediate Processing Messages (Positive Test Cases)

  Scenario: Verify specific processing message for order number "ORD90123"
    Given User is on the order tracking page "https://example.com/trackorder"
    When User enters order number "ORD90123"
    And User clicks the "Track Order" button
    Then The status message should display "I am sorry for that. One moment to pull up the order and look into this for you."
