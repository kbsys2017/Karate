Feature: Sample Test
  I want to use this template for my feature file

  Background: 
    * def resultop = read('../data/results.json')
    * def feat1 = read('sampletwo.feature')
    * def result = call feat1
    * def foo = read('test.yaml')

  #Scenario: Sample Test
    #Given url 'https://reqres.in/api/users/2'
    #When method get
    #Then status 200
    #* print response
    #And match response == resultop[0]
    #And match response.data.id == 2
    #And match response.data.last_name != null
    #* def jobcode = response.data.job_id
    #And match jobcode  == null



  Scenario: Sample 3 Test
    Given url 'https://reqres.in/api/users/3'
    When method get
    Then status 200
    #* print response
    And match response == resultop[1]
    Then print 'result---',result
    * def first_name = result.response.data.first_name
    And match first_name == '#string'
    Then print 'first_name valus is --' , first_name
    Then print 'read yaml --' ,foo.url
