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

@Then("I should see a designated, empty area for displaying search results")
public void verifyEmptyResultArea() {
  System.out.println("Executing: I should see a designated, empty area for displaying search results");
  assertThat(page.locator("#orderDetails")).isVisible();
  assertThat(page.locator("#orderDetails")).hasText(""); // Assert it's visible and contains no text
  assertThat(page.locator("#displayStatus")).isVisible();
  assertThat(page.locator("#displayStatus")).hasText(""); // Assert it's visible and contains no text
}

@Then("I should see a search type selection dropdown")
public void verifySearchTypeDropdown() {
  System.out.println("Executing: I should see a search type selection dropdown");
  assertThat(page.locator("#searchType")).isVisible();
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

@When("I select {string} from the search type dropdown")
public void selectSearchType(String option) {
  System.out.println("Executing: I select " + option + " from the search type dropdown");
  page.locator("#searchType").selectOption(option);
}

@Then("{string} should be the initially selected search type")
public void verifyInitiallySelectedSearchType(String expectedOption) {
  System.out.println("Executing: " + expectedOption + " should be the initially selected search type");
  String selectedText = (String) page.locator("#searchType").evaluate("el => el.options[el.selectedIndex].text");
  assertEquals(expectedOption, selectedText);
}

@Then("I should see a prominent title {string}")
public void verifyProminentTitle(String expectedTitle) {
  System.out.println("Executing: I should see a prominent title " + expectedTitle);
  assertThat(page).hasTitle(expectedTitle);
}

@Then("I should see the input field is still present")
public void verifyInputFieldStillPresent() {
  System.out.println("Executing: I should see the input field is still present");
  assertThat(page.locator("#orderIdInput")).isVisible();
  // Note: The UI structure does not explicitly state a placeholder change for #orderIdInput
  // when 'Tracking Number' is selected. We only verify the input field remains visible.
}

}
