Feature: Order Tracking - Austen Bed Quantity Discrepancy (Negative)

  Scenario: Another Discrepancy - System Shows Two, Charged One, Delivers One, with Different Order ID
    Given I am on the order tracking page
    When I enter order number "AUSTEN_BED_NEG_004"
    And I click "Track Order"
    Then the order details should show "Item: Austen Bed, Quantity: 1"
    And the billing summary should show "Total Charged: $500.00"
    And the delivery status should indicate "1 Austen Bed will be delivered"
    And a warning message "Please note: While your order may have initially indicated 2 Austen Beds, you were charged for 1 and will receive 1." should be displayed.
