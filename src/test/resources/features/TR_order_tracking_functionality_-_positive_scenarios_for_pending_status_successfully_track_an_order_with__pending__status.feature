Feature: Order Tracking Functionality - Positive Scenarios for Pending Status

  Scenario: Successfully track an order with 'Pending' status
    Given User is on the order tracking page
    When User enters order number "ORDPEND123"
    And User clicks the "Track Order" button
    Then The status message should display "Pending"
