Feature: Order Tracking for Defective Final Sale Items (Positive Test Cases)

  Scenario: User successfully tracks an order for defective final sale items with safety concern
    Given User is on the order tracking page
    When User enters order number "CHAIRS_SAFEDEFECT_001"
    And User clicks "Track Order" button
    Then The status message should display "Order CHAIRS_SAFEDEFECT_001: Final Sale, Defective Chairs. Manufacturing defect, safety risk identified. Please contact support for resolution options."
