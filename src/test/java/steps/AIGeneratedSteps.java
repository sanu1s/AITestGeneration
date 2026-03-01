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

@Then("I should see the title {string}")
public void verifyTitle(String titleText) {
    System.out.println("Executing: I should see the title " + titleText);
    assertThat(page.locator("h1")).containsText(titleText);
}

@Then("the input field {string} should have placeholder {string}")
public void verifyInputFieldPlaceholder(String inputId, String placeholderText) {
    System.out.println("Executing: the input field " + inputId + " should have placeholder " + placeholderText);
    assertThat(page.locator("input#" + inputId)).hasAttribute("placeholder", placeholderText);
}

@Given("I navigate to the OrderQuest page")
public void navigateToOrderQuestPage() {
    System.out.println("Executing: I navigate to the OrderQuest page");
    page.navigate("http://localhost:7070");
}

@When("I select {string} from the {string} dropdown")
public void selectFromDropdown(String optionText, String dropdownId) {
    System.out.println("Executing: I select " + optionText + " from the " + dropdownId + " dropdown");
    page.locator("select#" + dropdownId).selectOption(optionText);
}

}
