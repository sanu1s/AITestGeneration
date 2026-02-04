Feature: Order Tracking for Defective Item Inquiry - Positive Scenarios

  Scenario: Successfully track another order for defective item follow-up
    Given User is on the order tracking page
    When User enters order number "DEFECTIVE_ORD_101"
    And User clicks the "Track Order" button
    Then The status message should display "Order DEFECTIVE_ORD_101 status: Investigation in progress."
    And The current URL should be "https://example.com/track/DEFECTIVE_ORD_101"
