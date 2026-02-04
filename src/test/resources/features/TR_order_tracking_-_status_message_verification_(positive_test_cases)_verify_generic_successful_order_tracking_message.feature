Feature: Order Tracking - Status Message Verification (Positive Test Cases)

  Scenario: Verify generic successful order tracking message
    Given User is on the order tracking page
    When User enters order number "ORD67890"
    And User clicks the "Track Order" button
    Then The status message should display "Your order has been placed and is being processed."
