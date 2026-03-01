Feature: Order Search Page UI Elements Verification (Positive)

  Scenario: Verify presence of all required UI elements
    Given I navigate to the Order Search page
    Then I should see the page title "Order Search"
    And I should see a dropdown with ID "searchType"
    And the dropdown with ID "searchType" should contain option "Order ID"
    And the dropdown with ID "searchType" should contain option "Tracking Number"
    And I should see an input field with ID "orderIdInput" and placeholder "Enter Order ID"
    And I should see a button with ID "searchBtn" and text "Search"
    And I should see an empty results display area with ID "orderDetails"
