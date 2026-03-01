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

@Then("the dropdown with ID {string} should contain option {string}")
public void verifyDropdownOption(String id, String optionText) {
    System.out.println("Executing: the dropdown with ID " + id + " should contain option " + optionText);
    assertThat(page.locator("select#" + id + " option:has-text('" + optionText + "')")).isVisible();
}

@Then("I should see a dropdown with ID {string}")
public void verifyDropdownWithId(String id) {
    System.out.println("Executing: I should see a dropdown with ID " + id);
    assertThat(page.locator("select#" + id)).isVisible();
}

@Then("the results display area with ID {string}" should be empty)
public void verifyResultsAreaIsEmpty(String id) {
    System.out.println("Executing: the results display area with ID " + id + " should be empty");
    assertThat(page.locator("div#" + id + ", section#" + id)).isEmpty();
}

@Then("I should see the page title {string}")
public void verifyPageTitle(String title) {
    System.out.println("Executing: I should see the page title " + title);
    assertThat(page).hasTitle(title);
}

@Then("I should see a button with ID {string} and text {string}")
public void verifyButtonWithIdAndText(String id, String text) {
    System.out.println("Executing: I should see a button with ID " + id + " and text " + text);
    assertThat(page.locator("button#" + id + ":has-text('" + text + "')")).isVisible();
}

@Given("I navigate to the Order Search page")
public void navigateToOrderSearchPage() {
    System.out.println("Executing: I navigate to the Order Search page");
    page.navigate("http://localhost:7070");
}

@Then("I should see an input field with ID {string} and placeholder {string}")
public void verifyInputFieldWithIdAndPlaceholder(String id, String placeholder) {
    System.out.println("Executing: I should see an input field with ID " + id + " and placeholder " + placeholder);
    assertThat(page.locator("input#" + id)).isVisible();
    assertThat(page.locator("input#" + id)).hasPlaceholder(placeholder);
}

@Then("I should see an empty results display area with ID {string}")
public void verifyEmptyResultsDisplayArea(String id) {
    System.out.println("Executing: I should see an empty results display area with ID " + id);
    assertThat(page.locator("div#" + id + ", section#" + id)).isVisible();
    assertThat(page.locator("div#" + id + ", section#" + id)).isEmpty();
}

@Then("the input field with ID {string} should be empty")
public void verifyInputFieldIsEmpty(String id) {
    System.out.println("Executing: the input field with ID " + id + " should be empty");
    assertThat(page.locator("input#" + id)).isEmpty();
}

}
