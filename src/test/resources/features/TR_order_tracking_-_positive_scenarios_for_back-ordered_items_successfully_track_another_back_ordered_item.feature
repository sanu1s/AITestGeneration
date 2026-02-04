Feature: Order Tracking - Positive Scenarios for Back-ordered Items

  Scenario: Successfully track another back-ordered item
    Given User is on the order tracking page
    When User enters order number "BO67890"
    And User clicks the "Track Order" button
    Then The status message should display "Your order BO67890 is back-ordered. Estimated delivery in 3-5 business days."
