Feature: Order Tracking Functionality

  Scenario: Successfully track a specific delayed order
    Given I am on the order tracking page
    When I enter "ORD12345" into the order number field
    And I click the "Track Order" button
    Then I should see the status "Delayed"
    And I should see "Delivery Date" displayed
