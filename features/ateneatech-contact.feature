Feature: "Atenea tech" contact
  In order to contact the "Atenea tech" crew
  As a prospect
  I need to be able to use the "Contacto" form

  Scenario: Contact sent
    Given I go to "http://ateneatech.com/contacto"
    When I fill in "Nombre*" with "John Doe"
    And fill in "Correo electrónico*" with "john@example.com"
    And fill in "Mensaje*" with "It's a test message"
    And press "Enviar"
    Then I should see "Gracias, su envío ha sido recibido." 

  @javascript
  Scenario: Contact not send: "Nombre*" field is mandatory!
    Given I go to "http://ateneatech.com/contacto"
    When I fill in "Correo electrónico*" with "john@example.com"
    And fill in "Mensaje*" with "It's a test message"
    And press "Enviar"
    Then I should see "Nombre es obligatorio."
