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

@Then("I should see the prominent title {string}")
    public void shouldSeeProminentTitle(String title) {
        System.out.println("Executing: I should see the prominent title " + title);
        assertThat(page.locator("h1")).isVisible();
        assertThat(page.locator("h1")).containsText(title);
    }

@Given("I open the OrderQuest application page")
    public void openOrderQuestApplicationPage() {
        System.out.println("Executing: I open the OrderQuest application page");
        page.navigate("http://localhost:7070");
        assertThat(page).hasURL("http://localhost:7070/");
    }

@And("the search type dropdown should contain the option {string}")
    public void searchTypeDropdownShouldContainOption(String optionText) {
        System.out.println("Executing: the search type dropdown should contain the option " + optionText);
        assertThat(page.locator("#searchType option:has-text(" + Pattern.quote(optionText) + ")")).isVisible();
    }

@And("I should see a {string} button with ID {string}")
    public void shouldSeeButtonWithId(String buttonText, String id) {
        System.out.println("Executing: I should see a " + buttonText + " button with ID " + id);
        assertThat(page.locator("#" + id)).isVisible();
        assertThat(page.locator("#" + id)).containsText(buttonText);
    }

@Given("I navigate to the OrderQuest page")
    public void navigateToOrderQuestPage() {
        System.out.println("Executing: I navigate to the OrderQuest page");
        page.navigate("http://localhost:7070");
        assertThat(page).hasURL("http://localhost:7070/");
    }

@Then("the search type dropdown with ID {string} should be enabled")
    public void searchTypeDropdownShouldBeEnabled(String id) {
        System.out.println("Executing: the search type dropdown with ID " + id + " should be enabled");
        assertThat(page.locator("#" + id)).isEnabled();
    }

@And("I should see a search type selection dropdown with ID {string}")
    public void shouldSeeSearchTypeDropdown(String id) {
        System.out.println("Executing: I should see a search type selection dropdown with ID " + id);
        assertThat(page.locator("#" + id)).isVisible();
    }

@And("the {string} button with ID {string} should be enabled")
    public void buttonShouldBeEnabled(String buttonText, String id) {
        System.out.println("Executing: the " + buttonText + " button with ID " + id + " should be enabled");
        assertThat(page.locator("#" + id)).isEnabled();
    }

@And("I should see an empty search results display area with ID {string}")
    public void shouldSeeEmptySearchResultsDisplayArea(String id) {
        System.out.println("Executing: I should see an empty search results display area with ID " + id);
        assertThat(page.locator("#" + id)).isVisible();
        assertThat(page.locator("#" + id)).isEmpty();
    }

@And("the input field with ID {string} should be enabled")
    public void inputFieldShouldBeEnabled(String id) {
        System.out.println("Executing: the input field with ID " + id + " should be enabled");
        assertThat(page.locator("#" + id)).isEnabled();
    }

@And("I should see an input field with ID {string} and placeholder {string}")
    public void shouldSeeInputFieldWithIdAndPlaceholder(String id, String placeholder) {
        System.out.println("Executing: I should see an input field with ID " + id + " and placeholder " + placeholder);
        assertThat(page.locator("#" + id)).isVisible();
        assertThat(page.locator("#" + id)).hasAttribute("placeholder", placeholder);
    }

}
