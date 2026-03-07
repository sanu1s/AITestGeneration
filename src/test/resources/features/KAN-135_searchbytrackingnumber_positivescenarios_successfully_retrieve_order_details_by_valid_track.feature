Feature: SearchByTrackingNumber_PositiveScenarios

  Scenario: Successfully retrieve order details by valid Tracking Number
    Given I am on the Order Search Page
    When I select "Tracking Number" from the search type dropdown
    And I enter "TRK987654321" into the "Tracking Number" field
    And I click the "Search" button
    Then the "Order Details" section should be "visible"
    And the "Order Details" should contain text "Customer Shipping Address: 123 Main St, Anytown, USA"
    And the "Order Details" should contain text "Customer Bill to Address: 456 Oak Ave, Anytown, USA"
    And the "Order Details" should contain text "Delivery Date: 2023-12-31"
    And the "error" section should be "hidden"
