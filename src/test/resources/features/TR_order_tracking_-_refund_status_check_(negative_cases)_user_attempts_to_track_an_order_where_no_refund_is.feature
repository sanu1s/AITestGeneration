Feature: Order Tracking - Refund Status Check (Negative Cases)

  Scenario: User attempts to track an order where no refund is applicable
    Given User is on the order tracking page
    When User enters order number "NOREFUND000"
    And User clicks the "Track Order" button
    Then The status message should display "No refund initiated for this order."
