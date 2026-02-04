Feature: Registry Item Management - Removal Functionality (Positive Scenarios)

  Scenario: Verifying wishlist display after item removal
    Given the user has successfully removed "Heirloom Blanket" from the registry
    When the user navigates to the "Wishlist" page
    Then the "Heirloom Blanket" should not be displayed with an attached name on the wishlist page
