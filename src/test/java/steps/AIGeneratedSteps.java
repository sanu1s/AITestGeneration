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

@Given("I am on the Order Quest page")
public void iAmOnTheOrderQuestPage() {
    System.out.println("Executing: I am on the Order Quest page");
    page.navigate("http://orderquest.com:7070");
}

@Then("the search results container should be empty")
public void theSearchResultsContainerShouldBeEmpty() {
    System.out.println("Executing: The search results container should be empty");
    assertThat(page.locator("#orderDetails")).hasText("");
}

@Then("the {string} dropdown should be pre-selected with {string}")
public void theSearchTypeDropdownShouldBePreSelectedWith(String dropdownLabel, String expectedSelection) {
    System.out.println("Executing: The " + dropdownLabel + " dropdown should be pre-selected with " + expectedSelection);
    assertThat(page.locator("#searchType")).hasValue(expectedSelection.replace(" ", "").toLowerCase()); // Assuming value is 'orderid'
    // To verify the visible text of the selected option:
    assertEquals(expectedSelection, (String) page.locator("#searchType").evaluate("el => el.options[el.selectedIndex].text"));
}

@Then("I should see a {string} button with text {string}")
public void iShouldSeeAButtonWithText(String buttonName, String buttonText) {
    System.out.println("Executing: I should see a " + buttonName + " button with text " + buttonText);
    assertThat(page.locator("#searchBtn")).isVisible();
    assertThat(page.locator("#searchBtn")).hasText(buttonText);
}

@Then("I should see a {string} button")
public void iShouldSeeAButton(String buttonName) {
    System.out.println("Executing: I should see a " + buttonName + " button");
    assertThat(page.locator("#searchBtn")).isVisible();
}

@Then("the {string} button should display text {string}")
public void theButtonShouldDisplayText(String buttonName, String expectedText) {
    System.out.println("Executing: The " + buttonName + " button should display text " + expectedText);
    assertThat(page.locator("#searchBtn")).hasText(expectedText);
}

@Then("the error message container should be hidden")
public void theErrorMessageContainerShouldBeHidden() {
    System.out.println("Executing: The error message container should be hidden");
    assertThat(page.locator("#error")).isHidden();
}

@Then("the {string} button should be enabled")
public void theButtonShouldBeEnabled(String buttonName) {
    System.out.println("Executing: The " + buttonName + " button should be enabled");
    assertThat(page.locator("#searchBtn")).isEnabled();
}

@Then("I should see a dropdown with label {string}")
public void iShouldSeeADropdownWithLabel(String labelText) {
    System.out.println("Executing: I should see a dropdown with label " + labelText);
    assertThat(page.locator("label:has-text(" + labelText + ")")).isVisible();
    assertThat(page.locator("#searchType")).isVisible();
}

@When("I select {string} from the {string} dropdown")
public void iSelectFromTheDropdown(String optionText, String dropdownLabel) {
    System.out.println("Executing: I select " + optionText + " from the " + dropdownLabel + " dropdown");
    page.locator("#searchType").selectOption(optionText);
}

@Then("the page title should be {string}")
public void thePageTitleShouldBe(String expectedTitle) {
    System.out.println("Executing: The page title should be " + expectedTitle);
    assertThat(page).hasTitle(expectedTitle);
}

@Then("the {string} input field should have placeholder {string}")
public void theInputFieldShouldHavePlaceholder(String fieldName, String expectedPlaceholder) {
    System.out.println("Executing: The " + fieldName + " input field should have placeholder " + expectedPlaceholder);
    assertThat(page.locator("#orderIdInput")).hasAttribute("placeholder", expectedPlaceholder);
}

}
