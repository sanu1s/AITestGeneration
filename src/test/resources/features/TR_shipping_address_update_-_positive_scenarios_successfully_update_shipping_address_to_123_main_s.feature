Feature: Shipping Address Update - Positive Scenarios

  Scenario: Successfully update shipping address to 123 Main St Anytown, CA 90210
    Given User is on the "Edit Shipping Address" page
    When User enters address "123 Main St"
    And User enters city "Anytown"
    And User enters state "CA"
    And User enters zip code "90210"
    And User clicks "Save Address" button
    Then The shipping address should be updated to "123 Main St Anytown, CA 90210"
