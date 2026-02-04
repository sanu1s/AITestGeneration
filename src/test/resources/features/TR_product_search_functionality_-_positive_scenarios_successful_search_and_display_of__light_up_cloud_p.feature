Feature: Product Search Functionality - Positive Scenarios

  Scenario: Successful search and display of 'Light up cloud pillow'
    Given User is on the product search page
    When User enters "Light up cloud pillow" into the search bar
    And User clicks the search button
    Then The product "Light up cloud pillow" should be displayed in the results
