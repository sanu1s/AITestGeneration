Feature: Order Tracking for Defective Item Inquiry - Positive Scenarios

  Scenario: Successfully track an order related to defective items
    Given User is on the order tracking page
    When User enters order number "DEFECTIVE_ORD_789"
    And User clicks the "Track Order" button
    Then The status message should display "Order DEFECTIVE_ORD_789 status: Defect report received, awaiting review."
    And The current URL should be "https://example.com/track/DEFECTIVE_ORD_789"
