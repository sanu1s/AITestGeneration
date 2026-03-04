package steps;

import com.microsoft.playwright.Page;
import com.microsoft.playwright.Locator;
import com.microsoft.playwright.options.AriaRole;
import com.microsoft.playwright.options.LoadState;
import com.microsoft.playwright.assertions.PlaywrightAssertions;
import io.cucumber.java.en.*;
import java.util.regex.Pattern;
import java.util.Arrays;
import java.util.List;
import com.microsoft.playwright.options.SelectOption;
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

@Given("I am on the OrderQuest page")
    public void iAmOnTheOrderQuestPage() {
        System.out.println("Executing: I am on the OrderQuest page");
        page.navigate("http://orderquest.com:7070/");
    }

@Then("I should see a search type dropdown with options {string} and {string}")
    public void iShouldSeeASearchTypeDropdownWithOptionsAnd(String option1, String option2) {
        System.out.println("Executing: I should see a search type dropdown with options " + option1 + " and " + option2);
        assertThat(page.locator("#searchType")).isVisible();
        List<String> actualOptions = page.locator("#searchType").evaluate("el => Array.from(el.options).map(o => o.text)");
        assertEquals(2, actualOptions.size());
        assertEquals(option1, actualOptions.get(0));
        assertEquals(option2, actualOptions.get(1));
    }

@Then("I should see the page title {string}")
    public void iShouldSeeThePageTitle(String expectedTitle) {
        System.out.println("Executing: I should see the page title " + expectedTitle);
        assertThat(page).hasTitle(expectedTitle);
    }

@Then("I should see a {string} button")
    public void iShouldSeeAButton(String buttonText) {
        System.out.println("Executing: I should see a " + buttonText + " button");
        assertThat(page.locator("#searchBtn")).isVisible();
        assertThat(page.locator("#searchBtn")).hasText(buttonText);
    }

@Then("I should see an empty search results area")
    public void iShouldSeeAnEmptySearchResultsArea() {
        System.out.println("Executing: I should see an empty search results area");
        // Assert that the element exists but is empty or hidden initially
        assertThat(page.locator("#orderDetails")).isHidden(); // Assuming it's hidden until results are present
        assertThat(page.locator("#orderDetails")).isEmpty(); // Verify it's empty if visible, or after it becomes visible
    }

@Then("I should see an input field with placeholder {string}")
    public void iShouldSeeAnInputFieldWithPlaceholder(String expectedPlaceholder) {
        System.out.println("Executing: I should see an input field with placeholder " + expectedPlaceholder);
        assertThat(page.locator("#orderIdInput")).isVisible();
        assertThat(page.locator("#orderIdInput")).hasAttribute("placeholder", expectedPlaceholder);
    }

@Then("the search results area should not be visible")
    public void theSearchResultsAreaShouldNotBeVisible() {
        System.out.println("Executing: The search results area should not be visible");
        assertThat(page.locator("#orderDetails")).isHidden();
    }

@Then("the search results area should be empty")
    public void theSearchResultsAreaShouldBeEmpty() {
        System.out.println("Executing: The search results area should be empty");
        assertThat(page.locator("#orderDetails")).isEmpty();
    }

}
