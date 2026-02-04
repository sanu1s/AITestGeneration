Feature: Product Support Tracking - Positive Scenarios

  Scenario: User successfully finds support for a valid product ID
    Given User is on the product support page
    When User enters product ID "CHAIR7890"
    And User clicks the "Track Order" button
    Then The status message should display "Support options available for Anywhere Chair"
