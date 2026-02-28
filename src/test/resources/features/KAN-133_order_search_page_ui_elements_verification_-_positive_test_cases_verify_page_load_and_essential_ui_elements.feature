Feature: Order Search Page UI Elements Verification - Positive Test Cases

  Scenario: Verify Page Load and Essential UI Elements
    Given I navigate to http://localhost:7070/
    Then I should see the title "Order Search"
    And I should see an input field with id "order_no"
    And I should see an input field labeled "Tracking Number"
    And I should see a button with text "Track Order"
    And I should see an empty area for search results
