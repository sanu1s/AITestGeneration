Feature: Product Search Functionality - Positive Scenarios

  Scenario: Successful navigation to 'Light up cloud pillow' product details
    Given User has searched for "Light up cloud pillow" and sees it in results
    When User clicks on the "Light up cloud pillow" product link
    Then User should be on the product details page for "Light up cloud pillow"
    And The product name "Light up cloud pillow" should be displayed on the details page
