@AccountPagetest
Feature: Retail Account Page
  
  #Note: For this feature you have to have an account and be logged in into account. Repeated steps are under Background Keyword

  Background: 
    Given User is on retail website 
		When User click on Sign in option 
		And User enter email 'jalil.abdul@tekschool.us' and password 'Abdul@123' 
		And User click on login button 
		Then User should be logged in into Account 
    

	@personalInformationtest
  Scenario: Verify User can update Profile Information
    When User click on Account option
    And User update Name 'Mir' and Phone '2532596884'
    And User click on Update button
    Then user profile information should be updated

	@AddCardttest
  Scenario: Verify User can add a payment method
    When User click on Account option
    And User click on Add a payment method link
    And User fill Debit or credit card information
      | cardNumber | nameOnCard | expirationMonth | expirationYear | securityCode |
      | 0031571129183421 | Sadat      | 11        | 2025           | 506          |
    And User click on Add your card button
    Then a message should be displayed Payment Method added successfully
 	@Edittest
  Scenario: Verify User can edit Debit or Credit card
  	
    When User click on Account option
    When User click on added card
    And User click on Edit option of card section
    And user edit information with below data
      | cardNumber | nameOnCard | expirationMonth | expirationYear | securityCode |
      | 0122333202000888      | Sadat      | 12   | 2022           | 546          |
    And user click on Update Your Card button
    Then a message should be displayed Payment Method updated Successfully
	@removedCardtest
  Scenario: Verify User can remove Debit or Credit card
    When User click on Account option
    When User click on added card
    And User click on remove option of card section
    Then payment details should be removed

	@AddAddresstest
  Scenario: Verify User can add an Address
    When User click on Account option
    And User click on Add address option
    And user fill new address form with below information
      | country | fullName | phoneNumber | streetAddress | apt   | city  | state | zipCode |
      | United States   | Mir Moshref    | 22426    |      205   | Kent  | WA    |  98035  |
    And User click Add Your Address button
    Then a message should be displayed Address Added Successfully

	@editAddresstest
  Scenario: Verify User can edit an Address added on account
    When User click on Account option
    And User click on edit address option
    And user fill new address form with below information there
      | country | fullName | phoneNumber | streetAddress | apt   | city  | state | zipCode |
      |  United States  |Mir Moshref     | 3232          | 585   | Auburn| WA    | 98036   |
    And User click update Your Address button
    Then a message should be displayed Address Updated Successfully

	@removeAddresstest
  Scenario: Verify User can remove Address from Account
    When User click on Account option
    And User click on remove option of Address section
    Then Address details should be removed
