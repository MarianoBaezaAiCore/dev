@LippiaTestManager @TestCases
Feature: Tests Cases

  Background:
    Given I perform the Token Request and save the token

  @Regresion @Smoke
  Scenario Outline: Se crea un test case
    When Realizo un '<operation>' hacia '<entity>' con el json '<jsonName>' obteniendo: 'projectId'
    Then I will get the proper status code '<statusCode>'
    And I save the following fields: 'id' as 'testCaseId'

    Examples:
      | jsonName                                         | statusCode | operation | entity             |
      | LippiaTestManager/TestsCases/rq_create_test_case | 201        | POST      | CREATETESTCASE_LTM |

  @Regresion
  Scenario Outline: Se obtienen test cases
    When Yo realizo una '<operation>' hacia '<entity>' endpoint con el '<jsonName>' y ''
    Then I will get the proper status code '<statusCode>'

    Examples:
      | jsonName                                       | statusCode | operation | entity             |
      | LippiaTestManager/TestsCases/rq_get_test_cases | 200        | GET       | CREATETESTCASE_LTM |

  @Regresion
  Scenario Outline: Se obtiene un test cases
    When Yo realizo una '<operation>' hacia '<entity>' endpoint con el '<jsonName>' y '<inputParameters>'
    Then I will get the proper status code '<statusCode>'

    Examples:
      | jsonName                                      | statusCode | operation | inputParameters                                                                                | entity             |
      | LippiaTestManager/TestsCases/rq_get_test_case | 200        | GET       | ProjectId:6f3b3241-2048-4d2b-91a9-fa0abf34dc70,testCaseId:ec0cf3fb-1098-48b0-89e7-8bf46fbb7e6a | CREATETESTCASE_LTM |

  @Regresion @Smoke
  Scenario Outline: Se actualiza un test case
    When Realizo un '<operation>' hacia '<entity>' con el json '<jsonName>' obteniendo: 'testCaseId'
    Then I will get the proper status code '<statusCode>'

    Examples:
      | jsonName                                         | statusCode | operation | entity             |
      | LippiaTestManager/TestsCases/rq_update_test_case | 200        | PATCH     | UPDATETESTCASE_LTM |

  @Regresion @Smoke
  Scenario Outline: Se crean tags para un testCase
    When Realizo un '<operation>' hacia '<entity>' con el json '<jsonName>' obteniendo: 'testCaseId'
    Then I will get the proper status code '<statusCode>'
    And I save the following fields: 'id' as 'tagId'

    Examples:
      | jsonName                                             | statusCode | operation | entity        |
      | LippiaTestManager/TestsCases/rq_create_test_case_tag | 200        | PUT       | CREATETAG_LTM |

  @Regresion @Smoke
  Scenario Outline: Se elimina un tag de un test case
    When Realizo un '<operation>' hacia '<entity>' con el json '<jsonName>' obteniendo: 'testCaseId,tagId'
    Then I will get the proper status code '<statusCode>'

    Examples:
      | jsonName                                             | statusCode | operation | entity            |
      | LippiaTestManager/TestsCases/rq_delete_test_case_tag | 200        | DELETE    | DELETEPROJECT_LTM |

  @Regresion
  Scenario Outline: Se duplica un test case
    When Realizo un '<operation>' hacia '<entity>' con el json '<jsonName>' obteniendo: 'testCaseId'
    Then I will get the proper status code '<statusCode>'
    And I save the following fields: 'id' as 'duplicatedTestCaseId'

    Examples:
      | jsonName                                                   | statusCode | operation | entity                      |
      | LippiaTestManager/TestsCases/rq_create_test_case_duplicate | 201        | POST      | CREATETESTCASEDUPLICATE_LTM |

  @Regresion @Smoke
  Scenario Outline: Se elimina un test case
    When Realizo un '<operation>' hacia '<entity>' con el json '<jsonName>' obteniendo: '<parametro>'
    Then I will get the proper status code '<statusCode>'

    Examples:
      | jsonName                                                    | statusCode | operation | entity            | parametro            |
      | LippiaTestManager/TestsCases/rq_delete_test_case            | 200        | DELETE    | DELETEPROJECT_LTM | testCaseId           |
      | LippiaTestManager/TestsCases/rq_delete_duplicated_test_case | 200        | DELETE    | DELETEPROJECT_LTM | duplicatedTestCaseId |

  @Regresion
  Scenario Outline: Se obtiene la lista de los test cases de un proyecto
    When Yo realizo una '<operation>' hacia '<entity>' endpoint con el '<jsonName>' y '<inputParameters>'
    Then I will get the proper status code '<statusCode>'

    Examples:
      | jsonName                                           | statusCode | operation | inputParameters                                | entity             |
      | LippiaTestManager/TestsCases/rq_get_list_test_case | 200        | GET_LIST  | projectId:6f3b3241-2048-4d2b-91a9-fa0abf34dc70 | CREATETESTCASE_LTM |