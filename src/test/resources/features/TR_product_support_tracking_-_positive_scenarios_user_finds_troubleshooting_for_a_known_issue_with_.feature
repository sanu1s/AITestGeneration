Feature: Product Support Tracking - Positive Scenarios

  Scenario: User finds troubleshooting for a known issue with a valid product ID
    Given User is on the product support page
    When User enters product ID "CHAIR5678"
    And User clicks the "Track Order" button
    Then The status message should display "Troubleshooting steps for arm falling out provided"
