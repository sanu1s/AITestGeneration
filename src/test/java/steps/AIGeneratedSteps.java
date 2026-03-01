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

@Then("I should see an input field with ID {string}")
public void verifyInputField(String inputId) {
    System.out.println("Executing: I should see an input field with ID " + inputId);
    assertThat(page.locator("input#" + inputId)).isVisible();
}

@Then("I should see the page title {string}")
public void verifyPageTitle(String expectedTitle) {
    System.out.println("Executing: I should see the page title " + expectedTitle);
    assertThat(page).hasTitle(expectedTitle);
}

@Given("I navigate to the Order Quest page")
public void navigateToOrderQuestPage() {
    System.out.println("Executing: I navigate to the Order Quest page");
    page.navigate("http://localhost:7070");
}

@Then("I should see a dropdown with ID {string} and options {string} and {string}")
public void verifyDropdownWithOptions(String dropdownId, String option1, String option2) {
    System.out.println("Executing: I should see a dropdown with ID " + dropdownId + " and options " + option1 + " and " + option2);
    assertThat(page.locator("select#" + dropdownId)).isVisible();
    assertThat(page.locator("select#" + dropdownId)).containsText(option1);
    assertThat(page.locator("select#" + dropdownId)).containsText(option2);
}

@Then("I should see an empty search results area with ID {string}")
public void verifyEmptySearchResultsArea(String areaId) {
    System.out.println("Executing: I should see an empty search results area with ID " + areaId);
    assertThat(page.locator("div#" + areaId + ", section#" + areaId)).isVisible();
    assertThat(page.locator("div#" + areaId + ", section#" + areaId)).isEmpty();
}

@Then("I should see a {string} button with ID {string}")
public void verifySearchButton(String buttonText, String buttonId) {
    System.out.println("Executing: I should see a " + buttonText + " button with ID " + buttonId);
    assertThat(page.locator("button#" + buttonId)).isVisible();
    assertThat(page.locator("button#" + buttonId)).hasText(buttonText);
}

@Then("the display status area with ID {string} should not be visible")
public void verifyDisplayStatusAreaNotVisible(String statusAreaId) {
    System.out.println("Executing: The display status area with ID " + statusAreaId + " should not be visible");
    assertThat(page.locator("div#" + statusAreaId + ", section#" + statusAreaId)).isHidden();
}

@Then("the {string} field should have placeholder {string}")
public void verifyInputFieldPlaceholder(String inputId, String expectedPlaceholder) {
    System.out.println("Executing: The " + inputId + " field should have placeholder " + expectedPlaceholder);
    assertThat(page.locator("input#" + inputId)).hasAttribute("placeholder", expectedPlaceholder);
}

@Then("I should see the button with ID {string} is enabled")
public void verifyButtonIsEnabled(String buttonId) {
    System.out.println("Executing: I should see the button with ID " + buttonId + " is enabled");
    assertThat(page.locator("button#" + buttonId)).isEnabled();
}

@Then("the error display area with ID {string} should not be visible")
public void verifyErrorAreaNotVisible(String errorAreaId) {
    System.out.println("Executing: The error display area with ID " + errorAreaId + " should not be visible");
    assertThat(page.locator("div#" + errorAreaId + ", section#" + errorAreaId)).isHidden();
}

@Then("the current URL should be {string}")
public void verifyCurrentUrl(String expectedUrl) {
    System.out.println("Executing: The current URL should be " + expectedUrl);
    assertThat(page).hasURL(expectedUrl);
}

@Then("I should see the input field with ID {string} is enabled")
public void verifyInputFieldIsEnabled(String inputId) {
    System.out.println("Executing: I should see the input field with ID " + inputId + " is enabled");
    assertThat(page.locator("input#" + inputId)).isEnabled();
}

}
