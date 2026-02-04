Feature: Order Tracking - Back-ordered Status and Stock Discrepancy Information (Negative)

  Scenario: Verify incorrect status for an order affected by stock sync issue showing generic processing
    Given User is on the order tracking page
    When User enters order number "ORD33445"
    And User clicks the "Track Order" button
    Then The status message should display "Processing"
    And The error message should display "Item may be back-ordered; availability on product page might be incorrect."
