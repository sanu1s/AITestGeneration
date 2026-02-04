Feature: Shipping Address Update - Positive Scenarios

  Scenario: Successfully update shipping address to 61 S Ward Ave Rumson, NJ 07760
    Given User is on the "Edit Shipping Address" page
    When User enters address "61 S Ward Ave"
    And User enters city "Rumson"
    And User enters state "NJ"
    And User enters zip code "07760"
    And User clicks "Save Address" button
    Then The shipping address should be updated to "61 S Ward Ave Rumson, NJ 07760"
