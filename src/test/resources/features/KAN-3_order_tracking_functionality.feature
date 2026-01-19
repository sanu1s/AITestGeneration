Feature: Order Tracking Functionality

  Scenario: Tracking a specific delayed order ORD12345
    Given I am on the order tracking page
    When I enter order number "ORD12345"
    And I click the "Track Order" button
    Then I should see the status "Delayed"
    And I should also see "Delivery Date"
