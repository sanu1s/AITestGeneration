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

@Then("the search type dropdown should be visible")
public void theSearchTypeDropdownShouldBeVisible() {
    System.out.println("Executing: the search type dropdown should be visible");
    assertThat(page.locator("#searchType")).isVisible();
}

@Then("the search button should be visible")
public void theSearchButtonShouldBeVisible() {
    System.out.println("Executing: the search button should be visible");
    assertThat(page.locator("#searchBtn")).isVisible();
}

@Then("the search type dropdown should be selected with {string}")
public void theSearchTypeDropdownShouldBeSelectedWith(String expectedLabel) {
    System.out.println("Executing: the search type dropdown should be selected with " + expectedLabel);
    assertEquals(expectedLabel, (String) page.locator("#searchType").evaluate("el => el.options[el.selectedIndex].text"));
}

@When("I leave the order ID input field empty")
public void iLeaveTheOrderIdInputFieldEmpty() {
    System.out.println("Executing: I leave the order ID input field empty");
    page.locator("#orderIdInput").fill("");
}

@Then("the order ID input field should be visible")
public void theOrderIdInputFieldShouldBeVisible() {
    System.out.println("Executing: the order ID input field should be visible");
    assertThat(page.locator("#orderIdInput")).isVisible();
}

@Then("the order details area should display {string}")
public void theOrderDetailsAreaShouldDisplay(String expectedText) {
    System.out.println("Executing: the order details area should display " + expectedText);
    assertThat(page.locator("#orderDetails")).containsText(expectedText);
}

@When("I select {string} from the search type dropdown")
public void iSelectFromSearchTypeDropdown(String optionText) {
    System.out.println("Executing: I select " + optionText + " from the search type dropdown");
    page.locator("#searchType").selectOption(Pattern.compile(optionText));
}

@Then("the order details area should be visible")
public void theOrderDetailsAreaShouldBeVisible() {
    System.out.println("Executing: the order details area should be visible");
    assertThat(page.locator("#orderDetails")).isVisible();
}

@Then("the order ID input field should have placeholder {string}")
public void theOrderIdInputFieldShouldHavePlaceholder(String expectedPlaceholder) {
    System.out.println("Executing: the order ID input field should have placeholder " + expectedPlaceholder);
    assertThat(page.locator("#orderIdInput")).hasAttribute("placeholder", expectedPlaceholder);
}

@Given("I am on the Order Search page")
public void iAmOnTheOrderSearchPage() {
    System.out.println("Executing: I am on the Order Search page");
    page.navigate("http://orderquest.com:7070");
}

@Then("the error message paragraph should be hidden")
public void theErrorMessageParagraphShouldBeHidden() {
    System.out.println("Executing: the error message paragraph should be hidden");
    assertThat(page.locator("#errorMessage")).isHidden();
}

@When("I enter {string} into the order ID input field")
public void iEnterIntoOrderIdInputField(String orderId) {
    System.out.println("Executing: I enter " + orderId + " into the order ID input field");
    page.locator("#orderIdInput").fill(orderId);
}

@When("I click the {string} button")
public void iClickTheButton(String buttonText) {
    System.out.println("Executing: I click the " + buttonText + " button");
    page.locator("#searchBtn:has-text(\"" + buttonText + "\")").click();
}

@Then("the order details area should be hidden")
public void theOrderDetailsAreaShouldBeHidden() {
    System.out.println("Executing: the order details area should be hidden");
    assertThat(page.locator("#orderDetails")).isHidden();
}

@Given("the error message area is hidden")
public void theErrorMessageAreaIsHidden() {
    System.out.println("Executing: the error message area is hidden");
    assertThat(page.locator("#error")).isHidden();
    assertThat(page.locator("#errorMessage")).isHidden();
}

@Then("the error message area should be visible")
public void theErrorMessageAreaShouldBeVisible() {
    System.out.println("Executing: the error message area should be visible");
    assertThat(page.locator("#error")).isVisible();
}

@Given("the order details area is hidden")
public void theOrderDetailsAreaIsHidden() {
    System.out.println("Executing: the order details area is hidden");
    assertThat(page.locator("#orderDetails")).isHidden();
}

@Then("the error message paragraph should display {string}")
public void theErrorMessageParagraphShouldDisplay(String expectedMessage) {
    System.out.println("Executing: the error message paragraph should display " + expectedMessage);
    assertThat(page.locator("#errorMessage")).containsText(expectedMessage);
}

@Then("the error message area should be hidden")
public void theErrorMessageAreaShouldBeHidden() {
    System.out.println("Executing: the error message area should be hidden");
    assertThat(page.locator("#error")).isHidden();
    assertThat(page.locator("#errorMessage")).isHidden();
}

}
