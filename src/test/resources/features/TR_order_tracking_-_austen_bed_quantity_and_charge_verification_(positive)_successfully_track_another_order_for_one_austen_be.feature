Feature: Order Tracking - Austen Bed Quantity and Charge Verification (Positive)

  Scenario: Successfully Track Another Order for One Austen Bed with Correct Charge and Delivery
    Given I am on the order tracking page
    When I enter order number "AUSTEN_BED_POS_002"
    And I click "Track Order"
    Then the order details should show "Item: Austen Bed, Quantity: 1"
    And the billing summary should show "Total Charged: $500.00"
    And the delivery status should indicate "1 Austen Bed will be delivered"
