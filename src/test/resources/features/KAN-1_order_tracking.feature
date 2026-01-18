Feature: Order Tracking

  Scenario: Track a delayed order with specific details
    Given I am on the Order Tracking page
    When I enter order number "ORD12345"
    And I click the "Track Order" button
    Then I should see the status "Delayed"
    And I should see "Delivery Date"
