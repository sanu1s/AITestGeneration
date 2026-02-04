Feature: Order Tracking for Defective Final Sale Items (Positive Test Cases)

  Scenario: User successfully tracks another order for defective final sale items
    Given User is on the order tracking page
    When User enters order number "CHAIRS_GENDETECT_002"
    And User clicks "Track Order" button
    Then The status message should display "Order CHAIRS_GENDETECT_002: Final Sale, Defective Items. Contact support for options."
