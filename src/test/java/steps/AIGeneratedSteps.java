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

@Then("the input field should have the placeholder {string}")
public void verifyInputFieldPlaceholder(String expectedPlaceholder) {
    System.out.println("Executing: the input field should have the placeholder " + expectedPlaceholder);
    assertThat(page.locator("#orderIdInput")).hasAttribute("placeholder", expectedPlaceholder);
}

@Then("I should see a button labeled {string}")
public void verifySearchButton(String buttonText) {
    System.out.println("Executing: I should see a button labeled " + buttonText);
    assertThat(page.locator("#searchBtn")).isVisible();
    assertThat(page.locator("#searchBtn")).hasText(buttonText);
}

@Then("I should see the page title {string}")
public void verifyPageTitle(String expectedTitle) {
    System.out.println("Executing: I should see the page title " + expectedTitle);
    assertThat(page).hasTitle(expectedTitle);
}

@Then("I should see a dropdown to select search type")
public void verifySearchTypeDropdownVisible() {
    System.out.println("Executing: I should see a dropdown to select search type");
    assertThat(page.locator("#searchType")).isVisible();
}

@Then("the dropdown should contain {string} as an option")
public void verifyDropdownOption(String optionText) {
    System.out.println("Executing: the dropdown should contain " + optionText + " as an option");
    List<String> options = page.locator("#searchType option").allTextContents();
    assertThat(options).contains(optionText);
}

@Then("I should see an input field for search criteria")
public void verifySearchInputFieldVisible() {
    System.out.println("Executing: I should see an input field for search criteria");
    assertThat(page.locator("#orderIdInput")).isVisible();
}

@Given("I navigate to the OrderQuest application")
public void navigateToOrderQuestApplication() {
    System.out.println("Executing: I navigate to the OrderQuest application");
    page.navigate("http://localhost:7070");
}

@Then("the search results display area should be initially empty")
public void verifySearchResultsAreaEmpty() {
    System.out.println("Executing: the search results display area should be initially empty");
    // Check if the primary result area is visible but empty, or hidden
    Locator orderDetails = page.locator("#orderDetails");
    Locator displayStatus = page.locator("#displayStatus");
    Locator errorArea = page.locator("#error");

    if (orderDetails.isVisible()) {
        assertThat(orderDetails).hasText("");
    }

}
