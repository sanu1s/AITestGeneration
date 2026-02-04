Feature: Order Tracking Functionality - Negative Scenarios

  Scenario: Display specific message for Business/Trade purchase order
    Given user is on the order tracking page
    When User enters order number "B2BORD789"
    And User clicks the "Track Order" button
    Then The error message should display "For Business or Trade purchases, please contact our Business department at 123-345-2123 or OCC2B@owncompany.com."
