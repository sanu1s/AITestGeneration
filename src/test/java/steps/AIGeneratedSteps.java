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

@Then("the input field with ID {string} should have placeholder {string}")
public void verifyInputFieldPlaceholder(String id, String placeholder) {
    System.out.println("Executing: the input field with ID " + id + " should have placeholder " + placeholder);
    assertThat(page.locator("#" + id)).hasAttribute("placeholder", placeholder);
}

@Then("I should see a dropdown with ID {string}")
public void verifyDropdownWithId(String id) {
    System.out.println("Executing: I should see a dropdown with ID " + id);
    assertThat(page.locator("#" + id)).isVisible();
}

@Then("I should see a section with ID {string}")
public void verifySectionWithId(String id) {
    System.out.println("Executing: I should see a section with ID " + id);
    assertThat(page.locator("#" + id)).isVisible();
}

@Then("I should see an input field with ID {string}")
public void verifyInputFieldWithId(String id) {
    System.out.println("Executing: I should see an input field with ID " + id);
    assertThat(page.locator("#" + id)).isVisible();
}

@Then("I should see the page title {string}")
public void verifyPageTitle(String title) {
    System.out.println("Executing: I should see the page title " + title);
    assertThat(page.locator("h1")).containsText(title);
}

@Then("I should see a button with ID {string} and text {string}")
public void verifyButtonWithIdAndText(String id, String text) {
    System.out.println("Executing: I should see a button with ID " + id + " and text " + text);
    assertThat(page.locator("#" + id)).isVisible();
    assertThat(page.locator("#" + id)).hasText(text);
}

@Then("the dropdown with ID {string} should have option {string}")
public void verifyDropdownOption(String dropdownId, String optionText) {
    System.out.println("Executing: the dropdown with ID " + dropdownId + " should have option " + optionText);
    assertThat(page.locator("#" + dropdownId).locator("option:has-text('" + optionText + "')")).isVisible();
}

@Given("I navigate to {string}")
public void navigateToUrl(String url) {
    System.out.println("Executing: I navigate to " + url);
    page.navigate(url);
}

@Then("the section with ID {string} should be empty")
public void verifySectionIsEmpty(String id) {
    System.out.println("Executing: the section with ID " + id + " should be empty");
    assertThat(page.locator("#" + id)).hasText("");
}

}
