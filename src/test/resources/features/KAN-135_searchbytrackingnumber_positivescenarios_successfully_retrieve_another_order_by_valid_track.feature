Feature: SearchByTrackingNumber_PositiveScenarios

  Scenario: Successfully retrieve another order by valid Tracking Number
    Given I am on the Order Search Page
    When I select "Tracking Number" from the search type dropdown
    And I enter "TRK112233445" into the "Tracking Number" field
    And I click the "Search" button
    Then the "Order Details" section should be "visible"
    And the "Order Details" should contain text "Customer Shipping Address: 789 Pine Lane, Othertown, USA"
    And the "Order Details" should contain text "Customer Bill to Address: 101 Birch St, Othertown, USA"
    And the "Order Details" should contain text "Delivery Date: 2024-01-15"
    And the "error" section should be "hidden"
