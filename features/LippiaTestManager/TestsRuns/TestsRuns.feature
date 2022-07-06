Feature: TestsRuns

  @Regresion @PWC001_000059
  Scenario Outline: Se agrega un Test Case a un test run
    When Realizo un '<operation>' hacia '<entity>' con el json '<jsonName>' obteniendo: 'testRunId'
    Then I will get the proper status code '<statusCode>'
    And I save the test case id as 'testCaseId'

    Examples: 
      | jsonName                                                 | statusCode | operation | entity                   |
      | LippiaTestManager/TestsRuns/rq_add_test_case_to_test_run | 200        | PUT       | ADDTESTCASETOTESTRUN_LTM |

  @Regresion @Smoke @PWC001_000063
  Scenario Outline: Se crea la ejecucion de un test run
    When Realizo un '<operation>' hacia '<entity>' con el json '<jsonName>' obteniendo: 'testRunId'
    Then I will get the proper status code '<statusCode>'

    Examples: 
      | jsonName                                                  | statusCode | operation | entity                     |
      | LippiaTestManager/TestsRuns/rq_create_test_run_executions | 201        | POST      | CREATETESTRUNEXECUTION_LTM |

  @Regresion @Smoke @PWC001_000061
  Scenario Outline: Se crea tags para el testRun por id
    When Realizo un '<operation>' hacia '<entity>' con el json '<jsonName>' obteniendo: 'testRunId'
    Then I will get the proper status code '<statusCode>'
    And I save the following fields: 'id' as 'tagId'

    Examples: 
      | jsonName                                           | statusCode | operation | entity        |
      | LippiaTestManager/TestsRuns/rq_create_test_run_tag | 200        | PUT       | CREATETAG_LTM |

  @Regresion @Smoke @PWC001_000055
  Scenario Outline: Se crea un test run
    When Yo realizo una '<operation>' hacia '<entity>' endpoint con el '<jsonName>' y '<inputParameters>'
    Then I will get the proper status code '<statusCode>'
    And I save the following fields: 'id' as 'testRunId'

    Examples: 
      | jsonName                                       | statusCode | operation | inputParameters                                | entity            |
      | LippiaTestManager/TestsRuns/rq_create_test_run | 201        | POST      | projectId:4467f506-a4b7-422d-ae23-b674170a13d2 | CREATETESTRUN_LTM |

  @Regresion @PWC001_000060
  Scenario Outline: Se duplica un test run
    When Realizo un '<operation>' hacia '<entity>' con el json '<jsonName>' obteniendo: 'testRunId'
    Then I will get the proper status code '<statusCode>'
    And I save the following fields: 'id' as 'duplicatedTestRunId'

    Examples: 
      | jsonName                                                 | statusCode | operation | entity         |
      | LippiaTestManager/TestsRuns/rq_create_test_run_duplicate | 201        | POST      | GETTESTRUN_LTM |

  @Regresion @Smoke @PWC001_000062
  Scenario Outline: Se elimina un tag de un test run
    When Realizo un '<operation>' hacia '<entity>' con el json '<jsonName>' obteniendo: 'testRunId,tagId'
    Then I will get the proper status code '<statusCode>'

    Examples: 
      | jsonName                                           | statusCode | operation | entity     |
      | LippiaTestManager/TestsRuns/rq_delete_test_run_tag | 200        | DELETE    | DELETE_LTM |

  @Regresion @Smoke @PWC001_000064
  Scenario Outline: Se elimina un test case de un run
    When Realizo un '<operation>' hacia '<entity>' con el json '<jsonName>' obteniendo: 'duplicatedTestRunId,testCaseId'
    Then I will get the proper status code '<statusCode>'

    Examples: 
      | jsonName                                                                 | statusCode | operation | entity     |
      | LippiaTestManager/TestsRuns/rq_delete_test_case_from_duplicated_test_run | 200        | DELETE    | DELETE_LTM |

  @Regresion @Smoke @PWC001_000065
  Scenario Outline: Se elimina un test run
    When Realizo un '<operation>' hacia '<entity>' con el json '<jsonName>' obteniendo: '<field>'
    Then I will get the proper status code '<statusCode>'

    Examples: 
      | jsonName                                                 | statusCode | operation | field               | entity     |
      | LippiaTestManager/TestsRuns/rq_delete_test_run           | 200        | DELETE    | testRunId           | DELETE_LTM |
      | LippiaTestManager/TestsRuns/rq_delete_duplicate_test_run | 200        | DELETE    | duplicatedTestRunId | DELETE_LTM |

  @Regresion @PWC001_000058
  Scenario Outline: Se obtiene la lista de los test runs de un proyecto
    When Yo realizo una '<operation>' hacia '<entity>' endpoint con el '<jsonName>' y '<inputParameters>'
    Then I will get the proper status code '<statusCode>'

    Examples: 
      | jsonName                                          | statusCode | operation         | inputParameters                                | entity         |
      | LippiaTestManager/TestsRuns/rq_get_list_test_runs | 200        | GET_LIST_PROJECTS | projectId:99ed533f-0bda-4df7-94b3-8ed0142c96f5 | GETTESTRUN_LTM |

  @Regresion @PWC001_000056
  Scenario Outline: Se obtiene un test run
    When Realizo un '<operation>' hacia '<entity>' con el json '<jsonName>' obteniendo: 'testRunId'
    Then I will get the proper status code '<statusCode>'

    Examples: 
      | jsonName                                    | statusCode | operation | entity         |
      | LippiaTestManager/TestsRuns/rq_get_test_run | 200        | GET       | GETTESTRUN_LTM |

  @Regresion @PWC001_000057
  Scenario Outline: Se obtienen test runs
    When Yo realizo una '<operation>' hacia '<entity>' endpoint con el '<jsonName>' y ''
    Then I will get the proper status code '<statusCode>'

    Examples: 
      | jsonName                                     | statusCode | operation | entity         |
      | LippiaTestManager/TestsRuns/rq_get_test_runs | 200        | GET_LIST  | GETTESTRUN_LTM |