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

@Then("I should see a search type dropdown with ID {string}")
public void verifySearchTypeDropdown(String dropdownId) {
    System.out.println("Executing: I should see a search type dropdown with ID " + dropdownId);
    assertThat(page.locator("select#" + dropdownId)).isVisible();
}

@Then("the {string} option should be selected by default in the {string} dropdown")
public void verifyDefaultSelectedOption(String expectedOptionLabel, String dropdownId) {
    System.out.println("Executing: the " + expectedOptionLabel + " option should be selected by default in the " + dropdownId + " dropdown");
    String selectedOption = (String) page.locator("select#" + dropdownId).evaluate("el => el.options[el.selectedIndex].text");
    assertEquals(expectedOptionLabel, selectedOption, "The default selected option is incorrect.");
}

@Then("I should see the title {string}")
public void verifyPageTitle(String expectedTitle) {
    System.out.println("Executing: I should see the title " + expectedTitle);
    assertThat(page).hasTitle(expectedTitle);
}

@Given("I navigate to the OrderQuest page")
public void navigateToOrderQuestPage() {
    System.out.println("Executing: I navigate to the OrderQuest page");
    page.navigate("http://orderquest.com:7070");
}

@Then("I should see an empty search results area with ID {string}")
public void verifyEmptySearchResultsArea(String resultsAreaId) {
    System.out.println("Executing: I should see an empty search results area with ID " + resultsAreaId);
    assertThat(page.locator("div#" + resultsAreaId + ", section#" + resultsAreaId)).isVisible();
    assertThat(page.locator("div#" + resultsAreaId + ", section#" + resultsAreaId)).hasText("");
}

@Then("the input field with ID {string} should still have placeholder {string}")
public void verifyInputFieldPlaceholderConsistency(String inputId, String placeholderText) {
    System.out.println("Executing: the input field with ID " + inputId + " should still have placeholder " + placeholderText);
    assertThat(page.locator("input#" + inputId)).hasAttribute("placeholder", placeholderText);
}

@Then("the {string} option should be selected in the {string} dropdown")
public void verifySelectedOption(String expectedOptionLabel, String dropdownId) {
    System.out.println("Executing: the " + expectedOptionLabel + " option should be selected in the " + dropdownId + " dropdown");
    String selectedOption = (String) page.locator("select#" + dropdownId).evaluate("el => el.options[el.selectedIndex].text");
    assertEquals(expectedOptionLabel, selectedOption, "The selected option is incorrect.");
}

@Then("the search type dropdown should contain options {string} and {string}")
public void verifyDropdownOptions(String option1, String option2) {
    System.out.println("Executing: the search type dropdown should contain options " + option1 + " and " + option2);
    List<String> options = page.locator("select#searchType option").allTextContents();
    assertTrue(options.contains(option1), "Dropdown should contain option: " + option1);
    assertTrue(options.contains(option2), "Dropdown should contain option: " + option2);
}

@Then("I should see an input field with ID {string} and placeholder {string}")
public void verifyInputFieldWithPlaceholder(String inputId, String placeholderText) {
    System.out.println("Executing: I should see an input field with ID " + inputId + " and placeholder " + placeholderText);
    assertThat(page.locator("input#" + inputId)).isVisible();
    assertThat(page.locator("input#" + inputId)).hasAttribute("placeholder", placeholderText);
}

@Then("I should see a button with ID {string} with text {string}")
public void verifyButtonWithText(String buttonId, String buttonText) {
    System.out.println("Executing: I should see a button with ID " + buttonId + " with text " + buttonText);
    assertThat(page.locator("button#" + buttonId)).isVisible();
    assertThat(page.locator("button#" + buttonId)).hasText(buttonText);
}

@When("I select {string} from the {string} dropdown")
public void selectOptionFromDropdown(String optionLabel, String dropdownId) {
    System.out.println("Executing: I select " + optionLabel + " from the " + dropdownId + " dropdown");
    page.locator("select#" + dropdownId).selectOption(optionLabel);
}

}
