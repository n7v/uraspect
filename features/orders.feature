Feature: Order
@javascript
  Scenario: Open page from root page
    Given there is a page with the name "Заказ услуг" 
    When I am on the root page
    And I should see "Заказ услуг"
    And I follow "Заказ услуг"
    
