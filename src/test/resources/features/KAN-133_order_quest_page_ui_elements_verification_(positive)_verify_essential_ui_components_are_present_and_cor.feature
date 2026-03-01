Feature: Order Quest Page UI Elements Verification (Positive)

  Scenario: Verify essential UI components are present and correctly labeled on initial load
    Given I navigate to "http://localhost:7070"
    Then I should see the page title "OrderQuest | Premium Order Search"
    And I should see a dropdown with ID "searchType"
    And the dropdown with ID "searchType" should have "Order ID" as its selected option
    And I should see an input field with ID "orderIdInput"
    And the input field with ID "orderIdInput" should have placeholder "Enter Order ID"
    And I should see a button with ID "searchBtn" with text "Search"
    And I should see a result display area with ID "orderDetails" which is initially empty
    And I should see a status display area with ID "displayStatus" which is initially empty
    And I should see an error display area with ID "error" which is initially empty
