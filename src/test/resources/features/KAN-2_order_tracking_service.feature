Feature: Order Tracking Service

  Scenario: Successfully track a delayed order with delivery date
    Given I am on the order tracking page
    When I enter order number "ORD12345"
    And I click the "Track Order" button
    Then I should see the status "Delayed"
    And I should see the "Delivery Date" displayed
