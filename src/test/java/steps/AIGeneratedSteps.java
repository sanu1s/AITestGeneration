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

@Then("I should see an empty area for search results")
public void iShouldSeeAnEmptyAreaForSearchResults() {
    System.out.println("Executing: I should see an empty area for search results");
    assertThat(page.locator("#orderDetails")).isVisible();
    assertThat(page.locator("#orderDetails")).isEmpty();
}

@Given("I am on the Order Quest page")
public void iAmOnTheOrderQuestPage() {
    System.out.println("Executing: I am on the Order Quest page");
    page.navigate("http://localhost:7070");
}

@Then("I should see the page title {string}")
public void iShouldSeeThePageTitle(String expectedTitle) {
    System.out.println("Executing: I should see the page title " + expectedTitle);
    assertThat(page).hasTitle(expectedTitle);
}

@Then("I should see a search type dropdown with {string} selected")
public void iShouldSeeASearchTypeDropdownWithSelected(String selectedOption) {
    System.out.println("Executing: I should see a search type dropdown with " + selectedOption + " selected");
    assertThat(page.locator("#searchType")).isVisible();
    assertThat(page.locator("#searchType")).hasValue(selectedOption);
}

@Then("I should see a {string} button")
public void iShouldSeeAButton(String buttonText) {
    System.out.println("Executing: I should see a " + buttonText + " button");
    assertThat(page.locator("#searchBtn")).isVisible();
    assertThat(page.locator("#searchBtn")).hasText(buttonText);
}

@Then("I should see a prominent heading {string}")
public void iShouldSeeAProminentHeading(String expectedHeading) {
    System.out.println("Executing: I should see a prominent heading " + expectedHeading);
    assertThat(page.locator("h1")).isVisible();
    assertThat(page.locator("h1")).containsText(expectedHeading);
}

@Then("I should see an input field with placeholder {string}")
public void iShouldSeeAnInputFieldWithPlaceholder(String placeholder) {
    System.out.println("Executing: I should see an input field with placeholder " + placeholder);
    assertThat(page.locator("#orderIdInput")).isVisible();
    assertThat(page.locator("#orderIdInput")).hasPlaceholder(placeholder);
}

@When("I select {string} from the search type dropdown")
public void iSelectFromTheSearchTypeDropdown(String option) {
    System.out.println("Executing: I select " + option + " from the search type dropdown");
    page.locator("#searchType").selectOption(option);
}

@Then("the input field placeholder should remain {string}")
public void theInputFieldPlaceholderShouldRemain(String placeholder) {
    System.out.println("Executing: the input field placeholder should remain " + placeholder);
    assertThat(page.locator("#orderIdInput")).hasPlaceholder(placeholder);
}

@Then("the search type dropdown should display {string} as selected")
public void theSearchTypeDropdownShouldDisplayAsSelected(String selectedOption) {
    System.out.println("Executing: the search type dropdown should display " + selectedOption + " as selected");
    assertThat(page.locator("#searchType")).hasValue(selectedOption);
}

}
