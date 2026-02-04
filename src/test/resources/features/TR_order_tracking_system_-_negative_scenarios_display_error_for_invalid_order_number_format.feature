Feature: Order Tracking System - Negative Scenarios

  Scenario: Display Error for Invalid Order Number Format
    Given User is on the order tracking page
    When User enters order number "INV987"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid Order Number. Please check and try again."
    And The URL should be "https://www.example.com/track"
