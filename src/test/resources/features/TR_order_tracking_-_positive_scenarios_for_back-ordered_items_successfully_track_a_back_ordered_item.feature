Feature: Order Tracking - Positive Scenarios for Back-ordered Items

  Scenario: Successfully track a back-ordered item
    Given User is on the order tracking page
    When User enters order number "BO12345"
    And User clicks the "Track Order" button
    Then The status message should display "Your order BO12345 is back-ordered. Estimated delivery in 5-7 business days."
