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

@Then("the dropdown with ID {string} should contain option {string}")
public void verifyDropdownContainsOption(String id, String optionText) {
    System.out.println("Executing: the dropdown with ID " + id + " should contain option " + optionText);
    assertThat(page.locator("select#" + id + " option:has-text(\"" + optionText + "\")")).isVisible();
}

@Then("the input field with ID {string} should have placeholder {string}")
public void verifyInputFieldPlaceholder(String id, String placeholderText) {
    System.out.println("Executing: the input field with ID " + id + " should have placeholder " + placeholderText);
    assertThat(page.locator("input#" + id)).hasAttribute("placeholder", placeholderText);
}

@Then("I should see a dropdown with ID {string}")
public void verifyDropdownWithId(String id) {
    System.out.println("Executing: I should see a dropdown with ID " + id);
    assertThat(page.locator("select#" + id)).isVisible();
}

@Then("I should see an input field with ID {string}")
public void verifyInputFieldWithId(String id) {
    System.out.println("Executing: I should see an input field with ID " + id);
    assertThat(page.locator("input#" + id)).isVisible();
}

@Then("I should see the page title {string}")
public void verifyPageTitle(String expectedTitle) {
    System.out.println("Executing: I should see the page title " + expectedTitle);
    assertThat(page).hasTitle(expectedTitle);
}

@Then("I should see a button with ID {string} and text {string}")
public void verifyButtonWithIdAndText(String id, String buttonText) {
    System.out.println("Executing: I should see a button with ID " + id + " and text " + buttonText);
    assertThat(page.locator("button#" + id)).hasText(buttonText);
}

@When("I select {string} from the dropdown with ID {string}")
public void selectOptionFromDropdown(String optionText, String id) {
    System.out.println("Executing: I select " + optionText + " from the dropdown with ID " + id);
    page.locator("select#" + id).selectOption(optionText);
}

@Then("the dropdown with ID {string} should have {string} as the selected option")
public void verifySelectedDropdownOption(String id, String expectedOption) {
    System.out.println("Executing: the dropdown with ID " + id + " should have " + expectedOption + " as the selected option");
    String selectedText = (String) page.locator("select#" + id).evaluate("el => el.options[el.selectedIndex].text");
    assertEquals(expectedOption, selectedText);
}

@Then("I should see an empty search results area with ID {string}")
public void verifyEmptySearchResultsArea(String id) {
    System.out.println("Executing: I should see an empty search results area with ID " + id);
    assertThat(page.locator("div#" + id + ", section#" + id)).isVisible();
    assertThat(page.locator("div#" + id + ", section#" + id)).hasText("");
}

@Then("the input field with ID {string} should still have placeholder {string}")
public void verifyInputFieldStillHasPlaceholder(String id, String placeholderText) {
    System.out.println("Executing: the input field with ID " + id + " should still have placeholder " + placeholderText);
    assertThat(page.locator("input#" + id)).hasAttribute("placeholder", placeholderText);
}

@Given("I navigate to the OrderQuest page URL {string}")
public void navigateToOrderQuestPage(String url) {
    System.out.println("Executing: I navigate to the OrderQuest page URL " + url);
    page.navigate(url);
}

@Then("I should see an empty error message area with ID {string}")
public void verifyEmptyErrorMessageArea(String id) {
    System.out.println("Executing: I should see an empty error message area with ID " + id);
    assertThat(page.locator("div#" + id + ", section#" + id)).isVisible();
    assertThat(page.locator("div#" + id + ", section#" + id)).hasText("");
}

}
