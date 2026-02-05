Feature: Price Adjustment Request - Positive Scenarios

  Scenario: Successfully submit another price adjustment request for a different item
    Given User is on the "Price Adjustment Request" page
    When User enters order number "PA67890"
    And User enters item name "Wireless Mouse"
    And User enters reason "Price dropped by $5 on website"
    And User clicks "Submit Request" button
    Then A success message "Your price adjustment request for order PA67890 has been submitted successfully." should be displayed
