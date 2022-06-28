@Suggesters @LippiaTestManager @PWC001_000037
Feature: Suggesters

  Background:
    Given I perform the Token Request and save the token

  @Regresion @PWC001_000035
  Scenario Outline: Se obtienen los suggesters de un features
    When Yo realizo una '<operation>' hacia '<entity>' endpoint con el '<jsonName>' y '<inputParameters>'
    Then I will get the proper status code '<statusCode>'

    Examples: 
      | jsonName                                                | statusCode | operation | inputParameters | entity                    |
      | LippiaTestManager/Suggesters/rq_get_features_suggesters | 200        | GET       | text:prueba     | GETFEATURESSUGGESTERS_LTM |

  @Regresion @PWC001_000031
  Scenario Outline: Se obtienen los suggesters de un proyecto
    When Yo realizo una '<operation>' hacia '<entity>' endpoint con el '<jsonName>' y '<inputParameters>'
    Then I will get the proper status code '<statusCode>'
    And I save the following fields of projects response: 'id' as 'projectId'

    Examples: 
      | jsonName                                                | statusCode | operation | inputParameters | entity                   |
      | LippiaTestManager/Suggesters/rq_get_projects_suggesters | 200        | GET       | text:automation | GETPROJECTSUGGESTERS_LTM |

  @Regresion @PWC001_000034
  Scenario Outline: Se obtienen los suggesters de un tags
    When Yo realizo una '<operation>' hacia '<entity>' endpoint con el '<jsonName>' y '<inputParameters>'
    Then I will get the proper status code '<statusCode>'

    Examples: 
      | jsonName                                            | statusCode | operation | inputParameters | entity                |
      | LippiaTestManager/Suggesters/rq_get_tags_suggesters | 200        | GET       | text:LTM        | GETTAGSSUGGESTERS_LTM |

  @Regresion @PWC001_000033
  Scenario Outline: Se obtienen los suggesters de un test cases
    When Yo realizo una '<operation>' hacia '<entity>' endpoint con el '<jsonName>' y '<inputParameters>'
    Then I will get the proper status code '<statusCode>'

    Examples: 
      | jsonName                                                  | statusCode | operation | inputParameters | entity                     |
      | LippiaTestManager/Suggesters/rq_get_test_cases_suggesters | 200        | GET       | text:automation | GETTESTCASESSUGGESTERS_LTM |

  @Regresion @PWC001_000036
  Scenario Outline: Se obtienen los suggesters de un test run
    When Yo realizo una '<operation>' hacia '<entity>' endpoint con el '<jsonName>' y '<inputParameters>'
    Then I will get the proper status code '<statusCode>'

    Examples: 
      | jsonName                                                 | statusCode | operation | inputParameters | entity                    |
      | LippiaTestManager/Suggesters/rq_get_test_runs_suggesters | 200        | GET       | text:test       | GETTESTRUNSSUGGESTERS_LTM |

  @Regresion @PWC001_000032
  Scenario Outline: Se obtienen los suggesters de un user
    When Yo realizo una '<operation>' hacia '<entity>' endpoint con el '<jsonName>' y '<inputParameters>'
    Then I will get the proper status code '<statusCode>'

    Examples: 
      | jsonName                                             | statusCode | operation | inputParameters | entity                |
      | LippiaTestManager/Suggesters/rq_get_users_suggesters | 200        | GET       | text:automation | GETUSERSUGGESTERS_LTM |