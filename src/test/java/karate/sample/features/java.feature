Feature: check the POST request

  Background: 
    * def readpost = read('../../../data1/post.json')
    * def test = call read('classpath:util.js')
    
    
    Given url someUrlBase
    * print 'Karate-config --' ,someUrlBase
    * print 'Karate-config --' ,appId
    * headers {Content-Type: 'application/json', Accept: 'application/json'}

  Scenario: Test case for post request
    And request readpost
    #And param delay = 3
    When method POST
    Then status 201
    * print 'resonse --',response
    #* def myjsfunction = function(){return 'Hello World!'}
    #* def returnVal = call myjsfunction
    #
    #* print 'returnVal -- ',returnVal
    
    * def Day = test.getCurrentDate()
    * print 'Day --' ,Day
    
    
    * def Month = test.getCurrentMonth()
    * print 'Month --' ,Month
    
     //* def Month = test.getCurrentMonth()
    //* print 'Month --' ,Month
