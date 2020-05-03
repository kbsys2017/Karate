Feature: Test sample two
  I want to use this template for my feature file

  Scenario: Sample 2 Test
    Given url 'https://reqres.in/api/users/2'
    When method get
    Then status 200
    #* print response resultop[0]
    #And match response == resultop[0]