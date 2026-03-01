Feature: Order Quest Page UI Elements Verification - Positive Scenarios

  Scenario: Verify essential UI elements are displayed correctly
    Given User navigates to the Order Quest page
    Then Page title should contain "Order Quest"
    And I should see a dropdown with ID "searchType"
    And I should see an input field with ID "orderIdInput" and placeholder "Enter Order ID"
    And I should see a button with ID "searchBtn" with text "Search"
    And I should see an empty display area with ID "orderDetails"
