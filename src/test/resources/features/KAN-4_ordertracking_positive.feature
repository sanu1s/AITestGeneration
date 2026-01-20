Feature: OrderTracking_Positive

  Scenario: Successfully track a valid 12-digit numeric order
    Given I am on the order tracking page
    When I enter order number "123456789012"
    And I click the "Track Order" button
    Then I should see the order status as "Delayed"
    And the estimated delivery date should be "2024-12-31"
