Feature: Order Tracking UI

  Scenario: Initial page elements are displayed correctly
    Given User navigates to the order tracking page
    Then The order number input field should be visible
    And The "Track Order" button should be visible
