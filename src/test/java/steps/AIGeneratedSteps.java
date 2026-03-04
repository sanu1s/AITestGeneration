package steps;

import com.microsoft.playwright.Page;
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

@Then("I should see the title {string}")
    public void iShouldSeeTheTitle(String expectedTitle) {
        System.out.println("Executing: I should see the title " + expectedTitle);
        assertThat(page).hasTitle(expectedTitle);
    }

@Then("I should see a {string} button")
    public void iShouldSeeAButton(String buttonText) {
        System.out.println("Executing: I should see a " + buttonText + " button");
        assertThat(page.locator("#searchBtn")).isVisible();
        assertThat(page.locator("#searchBtn")).hasText(buttonText);
    }

@Then("I should see an input field with placeholder {string}")
    public void iShouldSeeAnInputFieldWithPlaceholder(String placeholderText) {
        System.out.println("Executing: I should see an input field with placeholder " + placeholderText);
        assertThat(page.locator("#orderIdInput")).isVisible();
        assertThat(page.locator("#orderIdInput")).hasAttribute("placeholder", placeholderText);
    }

@Then("I should see {string} as an option")
    public void iShouldSeeAsAnOption(String optionText) {
        System.out.println("Executing: I should see " + optionText + " as an option");
        // Check if the option exists within the dropdown
        assertThat(page.locator("#searchType").locator("option").filter(new Locator.FilterOptions().setHasText(optionText))).isVisible();
    }

@Then("the designated search results area should be empty")
    public void theDesignatedSearchResultsAreaShouldBeEmpty() {
        System.out.println("Executing: the designated search results area should be empty");
        // Assuming these areas are initially hidden or empty
        assertThat(page.locator("#orderDetails")).isHidden();
        assertThat(page.locator("#displayStatus")).isHidden();
        assertThat(page.locator("#error")).isHidden();
    }

@When("I interact with the search type dropdown")
    public void iInteractWithTheSearchTypeDropdown() {
        System.out.println("Executing: I interact with the search type dropdown (no explicit action needed for this step)");
        // This step primarily sets context for the following 'Then' steps
    }

@Given("I navigate to the OrderQuest application")
    public void iNavigateToTheOrderQuestApplication() {
        System.out.println("Executing: I navigate to the OrderQuest application");
        page.navigate("http://localhost:7070");
    }

@Then("I should see a search type dropdown with {string} as the default selected option")
    public void iShouldSeeASearchTypeDropdownWithAsTheDefaultSelectedOption(String defaultOption) {
        System.out.println("Executing: I should see a search type dropdown with " + defaultOption + " as the default selected option");
        assertThat(page.locator("#searchType")).isVisible();
        assertEquals(defaultOption, (String) page.locator("#searchType").evaluate("el => el.options[el.selectedIndex].text"));
    }

}
