package steps;

import com.microsoft.playwright.Page;
import com.microsoft.playwright.options.AriaRole;
import com.microsoft.playwright.options.LoadState;
import com.microsoft.playwright.assertions.PlaywrightAssertions;
import io.cucumber.java.en.*;
import java.util.regex.Pattern;
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

@Then("I should see the {string} dropdown with options {string} and {string}")
public void verifySearchTypeDropdownWithOptions(String dropdownName, String option1, String option2) {
    System.out.println("Executing: Verify " + dropdownName + " dropdown with options " + option1 + " and " + option2);
    assertThat(page.locator("#searchType")).isVisible();
    assertThat(page.locator("#searchType").locator("option", new Locator.LocatorOptions().setHasText(option1))).isVisible();
    assertThat(page.locator("#searchType").locator("option", new Locator.LocatorOptions().setHasText(option2))).isVisible();
}

@Then("I should see the title {string}")
public void verifyPageTitle(String expectedTitle) {
    System.out.println("Executing: Verify page title: " + expectedTitle);
    assertThat(page).hasTitle(expectedTitle);
}

@Then("I should see a {string} button")
public void verifySearchButton(String buttonText) {
    System.out.println("Executing: Verify search button with text: " + buttonText);
    assertThat(page.locator("#searchBtn")).isVisible();
    assertThat(page.locator("#searchBtn")).hasText(buttonText);
}

@Then("I should see an empty area for {string}")
public void verifyEmptyResultArea(String areaName) {
    System.out.println("Executing: Verify empty area for: " + areaName);
    if (areaName.equals("Order Details")) {
        assertThat(page.locator("#orderDetails")).isVisible();
        assertThat(page.locator("#orderDetails")).hasText("");
    }

@Then("I should see an input field with placeholder {string}")
public void verifyInputFieldWithPlaceholder(String placeholderText) {
    System.out.println("Executing: Verify input field with placeholder: " + placeholderText);
    assertThat(page.locator("#orderIdInput")).isVisible();
    assertThat(page.locator("#orderIdInput")).hasAttribute("placeholder", placeholderText);
}

@Given("I navigate to the OrderQuest application")
public void navigateToOrderQuestApplication() {
    System.out.println("Executing: Navigate to OrderQuest application");
    page.navigate("http://localhost:7070");
}

}
