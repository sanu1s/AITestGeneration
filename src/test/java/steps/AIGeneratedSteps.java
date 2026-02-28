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

@Then("I should see a dropdown with ID {string}")
public void verifyDropdownWithId(String id) {
    System.out.println("Verifying dropdown with ID: " + id);
    assertThat(page.locator("#" + id)).isVisible();
}

@Then("I should see an input field with ID {string}")
public void verifyInputFieldWithId(String id) {
    System.out.println("Verifying input field with ID: " + id);
    assertThat(page.locator("#" + id)).isVisible();
}

@Then("I should not see an element with ID {string}")
public void verifyElementWithIdNotPresent(String unexpectedId) {
    System.out.println("Verifying element with ID '" + unexpectedId + "' is NOT present.");
    assertThat(page.locator("#" + unexpectedId)).not().isVisible();
}

@Then("the order details area with ID {string} should be visible")
public void verifyOrderDetailsAreaVisible(String id) {
    System.out.println("Verifying order details area " + id + " is visible.");
    assertThat(page.locator("#" + id)).isVisible();
}

@Then("the display status area with ID {string} should be empty")
public void verifyDisplayStatusAreaEmpty(String id) {
    System.out.println("Verifying display status area " + id + " is empty.");
    assertThat(page.locator("#" + id)).hasText("");
}

@Then("I should see a {string} button with ID {string}")
public void verifyButtonWithId(String buttonText, String id) {
    System.out.println("Verifying button " + buttonText + " with ID: " + id);
    assertThat(page.locator("#" + id)).isVisible();
    assertThat(page.locator("#" + id)).containsText(buttonText);
}

@Given("I navigate to {string}")
public void navigateToUrl(String url) {
    System.out.println("Navigating to: " + url);
    page.navigate(url);
}

@Then("the {string} field should have placeholder {string}")
public void verifyInputFieldPlaceholder(String id, String placeholder) {
    System.out.println("Verifying input field " + id + " has placeholder: " + placeholder);
    assertThat(page.locator("#" + id)).hasAttribute("placeholder", placeholder);
}

@Then("I should not see an element with text {string}")
public void verifyElementWithTextNotPresent(String unexpectedText) {
    System.out.println("Verifying element with text '" + unexpectedText + "' is NOT present.");
    assertThat(page.locator("text=" + unexpectedText)).not().isVisible();
}

@Then("the page title should not be {string}")
public void verifyPageTitleNot(String unexpectedTitle) {
    System.out.println("Verifying page title is NOT: " + unexpectedTitle);
    assertThat(page).hasTitle(new Regex("^(?!.*" + Pattern.quote(unexpectedTitle) + ").*$"));
}

@Then("the order details area with ID {string} should be empty")
public void verifyOrderDetailsAreaEmpty(String id) {
    System.out.println("Verifying order details area " + id + " is empty.");
    assertThat(page.locator("#" + id)).hasText("");
}

@Then("the {string} dropdown should contain option {string}")
public void verifyDropdownOption(String dropdownId, String optionText) {
    System.out.println("Verifying dropdown " + dropdownId + " contains option: " + optionText);
    assertThat(page.locator("#" + dropdownId).locator("option:has-text('" + optionText + "')")).isVisible();
}

@Then("I should see a prominent title like {string}")
public void verifyProminentTitle(String expectedTitle) {
    System.out.println("Verifying prominent title: " + expectedTitle);
    assertThat(page.locator("h1")).isVisible();
    assertThat(page.locator("h1")).containsText(expectedTitle);
}

@Then("I should see a designated area for order details with ID {string}")
public void verifyOrderDetailsArea(String id) {
    System.out.println("Verifying order details area with ID: " + id);
    assertThat(page.locator("#" + id)).isVisible();
}

@Then("I should see a designated area for display status with ID {string}")
public void verifyDisplayStatusArea(String id) {
    System.out.println("Verifying display status area with ID: " + id);
    assertThat(page.locator("#" + id)).isVisible();
}

@Then("the display status area with ID {string} should be visible")
public void verifyDisplayStatusAreaVisible(String id) {
    System.out.println("Verifying display status area " + id + " is visible.");
    assertThat(page.locator("#" + id)).isVisible();
}

}
