package steps;

import com.microsoft.playwright.Page;
import com.microsoft.playwright.options.AriaRole;
import com.microsoft.playwright.options.LoadState;
import com.microsoft.playwright.assertions.PlaywrightAssertions;
import io.cucumber.java.en.*;
import java.util.regex.Pattern;
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

@Then("the search results display area should be empty")
public void theSearchResultsDisplayAreaShouldBeEmpty() {
    System.out.println("Executing: The search results display area should be empty");
    assertThat(page.locator("#orderDetails")).isVisible();
    assertThat(page.locator("#orderDetails")).hasText("");
    assertThat(page.locator("#displayStatus")).isVisible();
    assertThat(page.locator("#displayStatus")).hasText("");
    assertThat(page.locator("#error")).isVisible();
    assertThat(page.locator("#error")).hasText("");
}

@Then("I should see the page title {string}")
public void iShouldSeeThePageTitle(String expectedTitle) {
    System.out.println("Executing: I should see the page title " + expectedTitle);
    assertThat(page).hasTitle(expectedTitle);
}

@Then("I should see the search type dropdown")
public void iShouldSeeTheSearchTypeDropdown() {
    System.out.println("Executing: I should see the search type dropdown");
    assertThat(page.locator("#searchType")).isVisible();
}

@Then("I should see a {string} button")
public void iShouldSeeAButton(String buttonText) {
    System.out.println("Executing: I should see a " + buttonText + " button");
    assertThat(page.locator("#searchBtn")).isVisible();
    assertThat(page.locator("#searchBtn")).hasText(buttonText);
}

@Then("I should see an input field with placeholder {string}")
public void iShouldSeeAnInputFieldWithPlaceholder(String expectedPlaceholder) {
    System.out.println("Executing: I should see an input field with placeholder " + expectedPlaceholder);
    assertThat(page.locator("#orderIdInput")).isVisible();
    assertThat(page.locator("#orderIdInput")).hasAttribute("placeholder", expectedPlaceholder);
}

@When("I select {string} from the search type dropdown")
public void iSelectFromTheSearchTypeDropdown(String optionText) {
    System.out.println("Executing: I select " + optionText + " from the search type dropdown");
    page.locator("#searchType").selectOption(new SelectOption().setLabel(optionText));
}

@Then("the {string} option should be selected in the search type dropdown")
public void theOptionShouldBeSelectedInTheSearchTypeDropdown(String expectedOption) {
    System.out.println("Executing: The " + expectedOption + " option should be selected in the search type dropdown");
    String selectedText = (String) page.locator("#searchType").evaluate("el => el.options[el.selectedIndex].text");
    assertEquals(expectedOption, selectedText);
}

@Given("I navigate to the OrderQuest application")
public void iNavigateToTheOrderQuestApplication() {
    System.out.println("Executing: I navigate to the OrderQuest application");
    page.navigate("http://localhost:7070");
}

@Then("the {string} option should be selected by default in the search type dropdown")
public void theOptionShouldBeSelectedByDefaultInTheSearchTypeDropdown(String expectedOption) {
    System.out.println("Executing: The " + expectedOption + " option should be selected by default in the search type dropdown");
    String selectedText = (String) page.locator("#searchType").evaluate("el => el.options[el.selectedIndex].text");
    assertEquals(expectedOption, selectedText);
}

}
