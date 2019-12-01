Feature: testing to demo karate features
#  Scenario: status code and header
#
#    Given url "https://uinames.com/api/"
#    When method get
#    Then status 200
#    And match header Content-Type == "application/json; charset=utf-8"
  # method --> makes a api call
  # verifies given status is returned
    # match --> used to make verifications
#  Scenario: printing example
#    Given url "https://uinames.com/api/"
#    When method get
#    Then status 200
#    And print "PRINTING RESPONSE"
#    And print response
#    And print response.name
#  Scenario: Parameters example: one param
#    Given url "https://uinames.com/api/"
#    And param region = 'Poland'
#    When method get
#    Then status 200
#    And print response.region
#  Scenario: Parameters example: multiple params
#    Given url "https://uinames.com/api/"
#    And params {region:'Kyrgyz Republic', gender:'female', amount:2}
#    When method get
#    Then status 200
And print response.region
And print response.gender
    # VERIFICATIONS
#  Scenario: verify whole response
#    Given url "https://reqres.in/api/users/1"
#    When method get
#    Then status 200
#    # verify whole response
#    And match response == {"data": {"id": 1,"email": "george.bluth@reqres.in","first_name": "George","last_name": "Bluth","avatar": "https://s3.amazonaws.com/uifaces/faces/twitter/calebogden/128.jpg"}}
#    # use the $ for response
#    # in karate $ means response
#    And match $ == {"data": {"id": 1,"email": "george.bluth@reqres.in","first_name": "George","last_name": "Bluth","avatar": "https://s3.amazonaws.com/uifaces/faces/twitter/calebogden/128.jpg"}}
#  Scenario: verify values in response
#    Given url "https://uinames.com/api/"
#    And params {region:'Kyrgyz Republic', gender:'female'}
#    When method get
#    Then status 200
#    And match response contains {region:'Kyrgyz Republic'}
#    And match response contains {region:'Kyrgyz Republic', gender:"female"}
#  Scenario: verify not null and data types
#    Given url "https://uinames.com/api/"
#    When method get
#    Then status 200
#    And match response contains {name:#notnull}
#    And match response contains {region:#string}
  Scenario: number of objects in response
    Given url "https://uinames.com/api/"
    And params {region:'Kyrgyz Republic', amount:2}
    When method get
    Then status 200
    And assert response.length == 2
    And match each response contains {region:'Kyrgyz Republic'}




