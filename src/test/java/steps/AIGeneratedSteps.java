package steps;

import com.microsoft.playwright.Page;
import com.microsoft.playwright.options.AriaRole;
import com.microsoft.playwright.options.LoadState;
import com.microsoft.playwright.assertions.PlaywrightAssertions;
import io.cucumber.java.en.*;
import static com.microsoft.playwright.assertions.PlaywrightAssertions.assertThat;
import static org.junit.jupiter.api.Assertions.*;

/**
 * Consolidate AI-generated Step Definitions
 */
public class AIGeneratedSteps {

    private final TestContext testContext;
    private final Page page;

    public AIGeneratedSteps(TestContext testContext) {
        this.testContext = testContext;
        this.page = testContext.page;
    }

@Then("The {string} input field should be visible")
public void theInputFieldShouldBeVisible(String fieldLabel) {
    System.out.println("Executing: The " + fieldLabel + " input field should be visible");
    if (fieldLabel.equals("Order Number")) {
        assertThat(page.locator("#order_no")).isVisible();
        assertThat(page.locator("label:has-text('Order Number')")).isVisible();
    }

@Then("The {string} input field should be empty")
public void theInputFieldShouldBeEmpty(String fieldLabel) {
    System.out.println("Executing: The " + fieldLabel + " input field should be empty");
    if (fieldLabel.equals("Order Number")) {
        assertThat(page.locator("#order_no")).isEmpty();
    }

@Then("The {string} button should be enabled")
public void theButtonShouldBeEnabled(String buttonText) {
    System.out.println("Executing: The " + buttonText + " button should be enabled");
    assertThat(page.locator("button:has-text('" + buttonText + "')")).isEnabled();
}

@Then("The page title should contain {string}")
public void thePageTitleShouldContain(String expectedTitlePart) {
    System.out.println("Executing: The page title should contain " + expectedTitlePart);
    assertThat(page).hasTitle(new Regex(".*" + expectedTitlePart + ".*"));
}

@Then("The {string} button should be visible")
public void theButtonShouldBeVisible(String buttonText) {
    System.out.println("Executing: The " + buttonText + " button should be visible");
    assertThat(page.locator("button:has-text('" + buttonText + "')")).isVisible();
}

@Then("The search results area should be visible and empty")
public void theSearchResultsAreaShouldBeVisibleAndEmpty() {
    System.out.println("Executing: The search results area should be visible and empty");
    assertThat(page.locator(".result")).isVisible();
    assertThat(page.locator(".result")).isEmpty();
}

@Given("User navigates to the Order Search page")
public void userNavigatesToOrderSearchPage() {
    System.out.println("Executing: User navigates to the Order Search page");
    page.navigate("http://localhost:7070/");
}

@Then("There should be exactly one {string} input field")
public void thereShouldBeExactlyOneInputField(String fieldLabel) {
    System.out.println("Executing: There should be exactly one " + fieldLabel + " input field");
    if (fieldLabel.equals("Order Number")) {
        assertThat(page.locator("#order_no")).hasCount(1);
    }

}
