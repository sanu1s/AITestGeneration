Feature: Order Tracking Functionality - Positive Test Cases

  Scenario: Successfully track another order for a monogrammed blanket
    Given User is on the order tracking page
    When User enters order number "MONOGRAM456"
    And User clicks the "Track Order" button
    Then The status message should display "Order MONOGRAM456: Processing - Monogramming in progress. Estimated delivery in 5-7 business days."
