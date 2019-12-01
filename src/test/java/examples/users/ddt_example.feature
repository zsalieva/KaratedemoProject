Feature: ddt using cucumber
  Scenario Outline: verify amount and region
    Given url "https://uinames.com/api/"
    And params {region:'<region>',amount:<amount>}
    When method get
    Then status 200
    And assert response.length == <expected_amount>
    And match each response contains {region:'<region>'}
    Examples:
      | amount | expected_amount | region          |
      | 2      | 2               | Kyrgyz Republic |
      | 22     | 22             | Turkey          |
      | 12     | 12              | Poland          |
      | 2      | 2               | Azerbaijan      |
      | 3      | 3               | Bangladesh      |
      | 22     | 22              | Canada          |
      | 200    | 200             | United States   |
      | 2      | 2               | Russia          |
    # second data set is designed to fail




