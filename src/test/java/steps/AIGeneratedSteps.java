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

@Then("I should see an empty area for displaying search results")
public void verifyEmptySearchResultsArea() {
    System.out.println("Executing: I should see an empty area for displaying search results");
    assertThat(page.locator("#orderDetails")).isVisible();
    assertThat(page.locator("#orderDetails")).hasText("");
}

@Then("{string} should be the selected search type")
public void verifySelectedSearchType(String expectedOption) {
    System.out.println("Executing: " + expectedOption + " should be the selected search type");
    String selectedOptionText = (String) page.locator("#searchType").evaluate("el => el.options[el.selectedIndex].text");
    assertEquals(expectedOption, selectedOptionText);
}

@Then("I should see the title {string}")
public void verifyPageTitle(String expectedTitle) {
    System.out.println("Executing: I should see the title " + expectedTitle);
    assertThat(page).hasTitle(expectedTitle);
}

@Then("I should see a {string} button with text {string}")
public void verifySearchButton(String buttonId, String buttonText) {
    System.out.println("Executing: I should see a " + buttonId + " button with text " + buttonText);
    assertThat(page.locator("#searchBtn")).isVisible();
    assertThat(page.locator("#searchBtn")).hasText(buttonText);
}

@Then("I should see the input field labeled {string}")
public void verifyInputFieldLabel(String labelText) {
    System.out.println("Executing: I should see the input field labeled " + labelText);
    assertThat(page.locator("label[for='orderIdInput']")).containsText(labelText);
    assertThat(page.locator("#orderIdInput")).isVisible();
}

@Then("the input field should have placeholder {string}")
public void verifyInputFieldPlaceholder(String expectedPlaceholder) {
    System.out.println("Executing: the input field should have placeholder " + expectedPlaceholder);
    assertThat(page.locator("#orderIdInput")).hasAttribute("placeholder", expectedPlaceholder);
}

@When("I select {string} from the {string} dropdown")
public void selectOptionFromDropdown(String optionText, String dropdownLabel) {
    System.out.println("Executing: I select " + optionText + " from the " + dropdownLabel + " dropdown");
    page.locator("#searchType").selectOption(optionText);
}

@Given("I navigate to the OrderQuest application")
public void navigateToOrderQuestApplication() {
    System.out.println("Executing: I navigate to the OrderQuest application");
    page.navigate("http://orderquest.com:7070");
}

@Then("I should see the {string} dropdown")
public void verifySearchTypeDropdown(String labelText) {
    System.out.println("Executing: I should see the " + labelText + " dropdown");
    assertThat(page.locator("label[for='searchType']")).containsText(labelText);
    assertThat(page.locator("#searchType")).isVisible();
}

}
