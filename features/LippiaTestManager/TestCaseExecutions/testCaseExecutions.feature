@TestCasesExecutions @LippiaTestManager @PWC001_000044
Feature: testCaseExecutions

  Background:
    Given I perform the Token Request and save the token

  @Regresion @Smoke @PWC001_000041
  Scenario Outline: Se actualiza el estado de un test case execution
    When Yo realizo una '<operation>' hacia '<entity>' endpoint con el '<jsonName>' y '<inputParameters>'
    Then I will get the proper status code '<statusCode>'

    Examples: 
      | jsonName                                                             | statusCode | operation | inputParameters                                          | entity                  |
      | LippiaTestManager/TestCasesExecution/rq_update_test_cases_executions | 200        | PATCH     | testCaseExecutionId:ffefb999-2360-4987-8f5a-2d1bed722dcf | TESTCASESEXECUTIONS_LTM |

  @Regresion @PWC001_000038
  Scenario Outline: Se agrega un attachment a un test case executions
    When Realizo un '<operation>' por Imagen con los '<inputParameters>' y obtiene el status '<statusCode>'
    Then se guardan los siguientes campos: 'id' como 'attachmentId'

    Examples: 
      | operation | inputParameters                                                            | statusCode |
      | POST      | testCaseExecutionId:ffefb999-2360-4987-8f5a-2d1bed722dcf,fileName:test.png | 201        |

  @Regresion @Smoke @PWC001_000042
  Scenario Outline: Se elimina un attachment de un test case execution
    When Yo realizo una '<operation>' hacia '<entity>' con el '<jsonName>' usando '<inputParameters>' y obteniendo los parametros: 'attachmentId'
    Then I will get the proper status code '<statusCode>'

    Examples: 
      | jsonName                                                                           | statusCode | operation | inputParameters                                          | entity     |
      | LippiaTestManager/TestCasesExecution/rq_delete_test_cases_executions_by_attachment | 200        | DELETE    | testCaseExecutionId:ffefb999-2360-4987-8f5a-2d1bed722dcf | DELETE_LTM |

  @Regresion @Smoke @Ignore @PWC001_000043
  Scenario Outline: Se elimina un test case execution por el id
    When Yo realizo una '<operation>' hacia '<entity>' endpoint con el '<jsonName>' y '<inputParameters>'
    Then I will get the proper status code '<statusCode>'

    Examples: 
      | jsonName                                                                   | statusCode | operation | inputParameters                                          | entity     |
      | LippiaTestManager/TestCasesExecution/rq_delete_test_cases_executions_by_id | 200        | DELETE    | testCaseExecutionId:fdab01e3-db70-4b43-9176-c24ce6104c19 | DELETE_LTM |

  @Regresion @PWC001_000039
  Scenario Outline: Se obtiene un test case execution
    When Yo realizo una '<operation>' hacia '<entity>' endpoint con el '<jsonName>' y '<inputParameters>'
    Then I will get the proper status code '<statusCode>'

    Examples: 
      | jsonName                                                          | statusCode | operation | inputParameters                                          | entity                  |
      | LippiaTestManager/TestCasesExecution/rq_get_test_cases_executions | 200        | GET       | testCaseExecutionId:ffefb999-2360-4987-8f5a-2d1bed722dcf | TESTCASESEXECUTIONS_LTM |

  @Regresion @PWC001_000040
  Scenario Outline: Se obtiene un test case execution por attachment
    When Yo realizo una '<operation>' hacia '<entity>' con el '<jsonName>' usando '<inputParameters>' y obteniendo los parametros: 'attachmentId'
    Then I will get the proper status code '<statusCode>'
    And I verify that an image is returned in the response

    Examples: 
      | jsonName                                                                        | statusCode | operation      | inputParameters                                          | entity                  |
      | LippiaTestManager/TestCasesExecution/rq_get_test_cases_executions_by_attachment | 200        | GET_ATTACHMENT | testCaseExecutionId:ffefb999-2360-4987-8f5a-2d1bed722dcf | TESTCASESEXECUTIONS_LTM |