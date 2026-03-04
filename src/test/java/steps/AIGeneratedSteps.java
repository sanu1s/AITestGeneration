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

@Then("I should see a search type selector with {string} as the default option")
public void verifySearchTypeSelectorDefaultOption(String defaultOption) {
    System.out.println("Executing: I should see a search type selector with " + defaultOption + " as the default option");
    assertThat(page.locator("#searchType")).isVisible();
    assertThat(page.locator("#searchType")).hasValue(defaultOption);
}

@Then("I should see an empty area for displaying search results")
public void verifyEmptySearchResultsArea() {
    System.out.println("Executing: I should see an empty area for displaying search results");
    // Verify that the result display areas are initially hidden or empty
    assertThat(page.locator("#orderDetails")).isHidden();
    assertThat(page.locator("#displayStatus")).isHidden();
    assertThat(page.locator("#error")).isHidden();
}

@When("I select {string} from the search type selector")
public void selectSearchType(String option) {
    System.out.println("Executing: I select " + option + " from the search type selector");
    page.locator("#searchType").selectOption(option);
}

@Then("I should see the title {string}")
public void verifyPageTitle(String expectedTitle) {
    System.out.println("Executing: I should see the title " + expectedTitle);
    assertThat(page).hasTitle(expectedTitle);
}

@Then("the search type selector should display {string}")
public void verifySearchTypeSelectorDisplay(String expectedDisplay) {
    System.out.println("Executing: the search type selector should display " + expectedDisplay);
    assertThat(page.locator("#searchType")).hasValue(expectedDisplay);
}

@Given("I navigate to the OrderQuest page")
public void navigateToOrderQuestPage() {
    System.out.println("Executing: I navigate to the OrderQuest page");
    page.navigate("http://localhost:7070");
}

@Then("I should see a {string} button")
public void verifySearchButton(String buttonText) {
    System.out.println("Executing: I should see a " + buttonText + " button");
    assertThat(page.locator("#searchBtn")).isVisible();
    assertThat(page.locator("#searchBtn")).hasText(buttonText);
}

@Then("I should see an input field with placeholder {string}")
public void verifyInputFieldWithPlaceholder(String placeholder) {
    System.out.println("Executing: I should see an input field with placeholder " + placeholder);
    assertThat(page.locator("#orderIdInput")).isVisible();
    assertThat(page.locator("#orderIdInput")).hasAttribute("placeholder", placeholder);
}

}
