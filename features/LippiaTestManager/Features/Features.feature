@FeaturesT @LippiaTestManager @DEV001_000257
Feature: Features

  Background:
    Given I perform the Token Request and save the token

  @Regresion @Smoke @Ignore @DEV001_000253
  Scenario Outline: Se actualiza un feature
    When Yo realizo una '<operation>' hacia '<entity>' endpoint con el '<jsonName>' y '<parameters>'
    Then I will get the proper status code '<statusCode>'

    Examples: 
      | jsonName                                     | statusCode | operation | parameters                                                                                        | entity            |
      | LippiaTestManager/Features/rq_update_feature | 200        | PATCH     | featureId:e62cdafe-9be8-4b95-957b-6b7bb142c326,currentUserId:ea648f38-5a6b-4cf6-bf8b-b2239549649b | UPDATEFEATURE_LTM |

  @Regresion @Smoke @Ignore @DEV001_000254
  Scenario Outline: Se actualizan los test cases mediante un feature id
    When Yo realizo una '<operation>' hacia '<entity>' endpoint con el '<jsonName>' y '<parameters>'
    Then I will get the proper status code '<statusCode>'

    Examples: 
      | jsonName                                                      | statusCode | operation | parameters                                                                                                                                        | entity                         |
      | LippiaTestManager/Features/rq_update_test_cases_by_feature_id | 200        | PUT       | featureId:e62cdafe-9be8-4b95-957b-6b7bb142c326,currentUserId:ea648f38-5a6b-4cf6-bf8b-b2239549649b,testCaseId:321e44d3-1243-4810-9514-939a1b17dd7d | UPDATETESTCASESBYFEATUREID_LTM |

  @Regresion @Smoke @Ignore @DEV001_000255
  Scenario Outline: Se elimina un feature por id
    When Yo realizo una '<operation>' hacia '<entity>' endpoint con el '<jsonName>' y '<parameters>'
    Then I will get the proper status code '<statusCode>'

    Examples: 
      | jsonName                                           | statusCode | operation | parameters                                     | entity     |
      | LippiaTestManager/Features/rq_delete_feature_by_id | 200        | DELETE    | featureId:e62cdafe-9be8-4b95-957b-6b7bb142c326 | DELETE_LTM |

  @Regresion @Smoke @Ignore @DEV001_000256
  Scenario Outline: Se elimina un test case por feature id
    When Yo realizo una '<operation>' hacia '<entity>' endpoint con el '<jsonName>' y '<parameters>'
    Then I will get the proper status code '<statusCode>'

    Examples: 
      | jsonName                                                     | statusCode | operation | parameters                                     | entity     |
      | LippiaTestManager/Features/rq_delete_test_case_by_feature_id | 200        | DELETE    | featureId:e62cdafe-9be8-4b95-957b-6b7bb142c326 | DELETE_LTM |

  @Regresion @DEV001_000252
  Scenario Outline: Se obtiene un feature file
    When Yo realizo una '<operation>' hacia '<entity>' endpoint con el '<jsonName>' y '<parameters>'
    Then I will get the proper status code '<statusCode>'

    Examples: 
      | jsonName                                       | statusCode | operation | parameters                                     | entity                    |
      | LippiaTestManager/Features/rq_get_feature_file | 200        | GET       | featureId:e62cdafe-9be8-4b95-957b-6b7bb142c326 | GETFEATURESSUGGESTERS_LTM |

  @Regresion @DEV001_000251
  Scenario Outline: Se obtiene un feature por id
    When Yo realizo una '<operation>' hacia '<entity>' endpoint con el '<jsonName>' y '<parameters>'
    Then I will get the proper status code '<statusCode>'

    Examples: 
      | jsonName                                        | statusCode | operation | parameters                                     | entity      |
      | LippiaTestManager/Features/rq_get_feature_by_id | 200        | GET       | featureId:e62cdafe-9be8-4b95-957b-6b7bb142c326 | FEATURE_LTM |

  @Regresion @DEV001_000250
  Scenario Outline: Se obtiene un feature por project id
    When Yo realizo una '<operation>' hacia '<entity>' endpoint con el '<jsonName>' y '<parameters>'
    Then I will get the proper status code '<statusCode>'

    Examples: 
      | jsonName                                  | statusCode | operation | parameters                                     | entity                    |
      | LippiaTestManager/Features/rq_get_feature | 200        | GET       | projectId:4467f506-a4b7-422d-ae23-b674170a13d2 | GETFEATURESSUGGESTERS_LTM |