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

@Then("I should see an empty area for search results")
    public void iShouldSeeAnEmptyAreaForSearchResults() {
        System.out.println("Executing: I should see an empty area for search results");
        assertThat(page.locator("div#orderDetails")).isVisible();
        assertThat(page.locator("div#orderDetails")).hasText("");
    }

@Given("I am on the OrderQuest page")
    public void iAmOnTheOrderQuestPage() {
        System.out.println("Executing: I am on the OrderQuest page");
        page.navigate("http://orderquest.com:7070");
    }

@Then("the input field with ID {string} should have placeholder {string}")
    public void theInputFieldWithIDShouldHavePlaceholder(String inputId, String expectedPlaceholder) {
        System.out.println("Executing: The input field with ID " + inputId + " should have placeholder " + expectedPlaceholder);
        assertThat(page.locator("input#" + inputId)).hasAttribute("placeholder", expectedPlaceholder);
    }

@Then("I should see the title {string}")
    public void iShouldSeeTheTitle(String expectedTitle) {
        System.out.println("Executing: I should see the title " + expectedTitle);
        assertThat(page).hasTitle(expectedTitle);
    }

@Then("I should see an input field with ID {string}")
    public void iShouldSeeAnInputFieldWithID(String inputId) {
        System.out.println("Executing: I should see an input field with ID " + inputId);
        assertThat(page.locator("input#" + inputId)).isVisible();
    }

@Then("the search type dropdown should have {string} selected by default")
    public void theSearchTypeDropdownShouldHaveSelectedByDefault(String defaultOption) {
        System.out.println("Executing: The search type dropdown should have " + defaultOption + " selected by default");
        assertThat(page.locator("select#searchType")).hasValue(defaultOption.replaceAll(" ", "")); // Assuming value matches text without spaces
    }

@Then("I should see a {string} button")
    public void iShouldSeeAButton(String buttonText) {
        System.out.println("Executing: I should see a " + buttonText + " button");
        assertThat(page.locator("button#searchBtn")).isVisible();
        assertThat(page.locator("button#searchBtn")).hasText(buttonText);
    }

@Then("the search type dropdown should contain options {string} and {string}")
    public void theSearchTypeDropdownShouldContainOptionsAnd(String option1, String option2) {
        System.out.println("Executing: The search type dropdown should contain options " + option1 + " and " + option2);
        List<String> options = page.locator("select#searchType option").allTextContents();
        assertThat(options).contains(option1);
        assertThat(options).contains(option2);
    }

@When("I select {string} from the search type dropdown")
    public void iSelectFromTheSearchTypeDropdown(String optionText) {
        System.out.println("Executing: I select " + optionText + " from the search type dropdown");
        page.locator("select#searchType").selectOption(optionText);
    }

@Then("I should see a dropdown for search type")
    public void iShouldSeeADropdownForSearchType() {
        System.out.println("Executing: I should see a dropdown for search type");
        assertThat(page.locator("select#searchType")).isVisible();
    }

@Then("the search type dropdown should show {string} as selected")
    public void theSearchTypeDropdownShouldShowAsSelected(String selectedOption) {
        System.out.println("Executing: The search type dropdown should show " + selectedOption + " as selected");
        String actualSelectedText = (String) page.locator("select#searchType").evaluate("el => el.options[el.selectedIndex].text");
        assertEquals(selectedOption, actualSelectedText);
    }

}
