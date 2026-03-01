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

@Then("the search type dropdown should contain {string}")
public void verifySearchTypeDropdownContainsOption(String optionText) {
    System.out.println("Executing: The search type dropdown should contain " + optionText);
    assertThat(page.locator("#searchType")).containsText(optionText);
}

@Then("I should see the search type selection dropdown")
public void verifySearchTypeDropdown() {
    System.out.println("Executing: I should see the search type selection dropdown");
    assertThat(page.locator("#searchType")).isVisible();
}

@Then("I should see an empty area for displaying search results")
public void verifyEmptySearchResultsArea() {
    System.out.println("Executing: I should see an empty area for displaying search results");
    // Assuming #orderDetails is the primary designated area for results
    assertThat(page.locator("#orderDetails")).isVisible();
    assertThat(page.locator("#orderDetails")).isEmpty();
}

@Then("I should see the page title {string}")
public void verifyPageTitle(String expectedTitle) {
    System.out.println("Executing: I should see the page title " + expectedTitle);
    assertThat(page).hasTitle(expectedTitle);
}

@Then("I should see the input field with placeholder {string}")
public void verifyInputFieldWithPlaceholder(String expectedPlaceholder) {
    System.out.println("Executing: I should see the input field with placeholder " + expectedPlaceholder);
    assertThat(page.locator("#orderIdInput")).isVisible();
    assertThat(page.locator("#orderIdInput")).hasAttribute("placeholder", expectedPlaceholder);
}

@Given("I navigate to the OrderQuest page")
public void navigateToOrderQuestPage() {
    System.out.println("Executing: I navigate to the OrderQuest page");
    page.navigate("http://localhost:7070");
}

@Then("I should see the {string} button")
public void verifySearchButton(String buttonText) {
    System.out.println("Executing: I should see the " + buttonText + " button");
    assertThat(page.locator("#searchBtn")).isVisible();
    assertThat(page.locator("#searchBtn")).hasText(buttonText);
}

}
