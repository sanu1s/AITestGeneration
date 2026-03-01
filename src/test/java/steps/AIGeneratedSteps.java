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

@Then("I should still see the {string} button")
public void shouldStillSeeTheButton(String buttonText) {
    System.out.println("Executing: I should still see the " + buttonText + " button");
    assertThat(page.locator("#searchBtn")).isVisible();
    assertThat(page.locator("#searchBtn")).hasText(buttonText);
}

@Then("I should see the title {string}")
public void shouldSeeTitle(String title) {
    System.out.println("Executing: I should see the title " + title);
    assertThat(page.locator("h1, text=" + Pattern.quote(title))).isVisible();
}

@Then("I should see the input field with placeholder {string}")
public void shouldSeeInputFieldWithPlaceholder(String placeholder) {
    System.out.println("Executing: I should see an input field with placeholder " + placeholder);
    assertThat(page.locator("#orderIdInput")).isVisible();
    assertThat(page.locator("#orderIdInput")).hasAttribute("placeholder", placeholder);
}

@Given("I navigate to the OrderQuest page")
public void navigateToOrderQuestPage() {
    System.out.println("Executing: I navigate to the OrderQuest page");
    page.navigate("http://localhost:7070");
    assertThat(page).hasURL("http://localhost:7070/");
}

@Then("I should see a {string} button")
public void shouldSeeButton(String buttonText) {
    System.out.println("Executing: I should see a " + buttonText + " button");
    assertThat(page.locator("#searchBtn")).isVisible();
    assertThat(page.locator("#searchBtn")).hasText(buttonText);
}

@Then("I should see an empty search results area")
public void shouldSeeEmptySearchResultsArea() {
    System.out.println("Executing: I should see an empty search results area");
    assertThat(page.locator("#orderDetails")).isVisible();
    assertThat(page.locator("#orderDetails")).hasText("");
    assertThat(page.locator("#displayStatus")).isVisible();
    assertThat(page.locator("#displayStatus")).hasText("");
}

@Then("I should see an input field with placeholder {string}")
public void shouldSeeInputFieldWithPlaceholder_7(String placeholder) {
    System.out.println("Executing: I should see an input field with placeholder " + placeholder);
    assertThat(page.locator("#orderIdInput")).isVisible();
    assertThat(page.locator("#orderIdInput")).hasAttribute("placeholder", placeholder);
}

@When("I select {string} from the search type dropdown")
public void selectFromSearchTypeDropdown(String option) {
    System.out.println("Executing: I select " + option + " from the search type dropdown");
    page.locator("#searchType").selectOption(option);
}

@Then("I should see a dropdown with options {string} and {string}")
public void shouldSeeDropdownWithOptions(String option1, String option2) {
    System.out.println("Executing: I should see a dropdown with options " + option1 + " and " + option2);
    assertThat(page.locator("#searchType")).isVisible();
    assertThat(page.locator("#searchType")).containsText(option1);
    assertThat(page.locator("#searchType")).containsText(option2);
}

}
