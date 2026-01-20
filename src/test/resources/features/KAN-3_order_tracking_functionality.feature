Feature: Order Tracking Functionality

  Scenario: Display error for excessively long order number
    Given User is on the order tracking page
    When User enters order number "VERYLONGORDERNUVVERYLONGORDERNUVVERYLONGORDERNUVVERYLONGORDERNUV"
    And User clicks the "Track Order" button
    Then The error message should display "Order number is too long."
