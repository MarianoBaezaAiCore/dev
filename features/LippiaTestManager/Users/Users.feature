Feature: Users

  @Regresion @PWC001_000073
  Scenario Outline: Obtengo los proyectos para guardar la response y utilizarla posteriormente en el update de user credentials por project id
    When Yo realizo una '<operation>' hacia '<entity>' endpoint con el '<jsonName>' y '<inputParameters>'
    Then I will get the proper status code '<statusCode>'
    And I save the following fields of projects response: 'id' as 'projectId'

    Examples: 
      | jsonName                                                | statusCode | operation | inputParameters | entity                   |
      | LippiaTestManager/Suggesters/rq_get_projects_suggesters | 200        | GET       | text:automation | GETPROJECTSUGGESTERS_LTM |

  @Regresion @Smoke @PWC001_000074
  Scenario Outline: Se actualiza un user
    When Realizo un '<operation>' hacia '<entity>' con el json '<jsonName>' obteniendo: 'userId'
    Then I will get the proper status code '<statusCode>'

    Examples: 
      | jsonName                               | statusCode | operation | entity   |
      | LippiaTestManager/Users/rq_update_user | 200        | PATCH     | USER_LTM |

  @Regresion @PWC001_000075
  Scenario Outline: Se actualiza un user credential mediante el user id
    When Realizo un '<operation>' hacia '<entity>' con el json '<jsonName>' obteniendo: 'userId, userCredentialId'
    Then I will get the proper status code '<statusCode>'

    Examples: 
      | jsonName                                                 | statusCode | operation | entity              |
      | LippiaTestManager/Users/rq_update_user_credentials_by_id | 200        | PATCH     | USERCREDENTIALS_LTM |

  @Regresion @PWC001_000076
  Scenario Outline: Se agrega un proyecto a un user credentials
    When Realizo un '<operation>' hacia '<entity>' con el json '<jsonName>' obteniendo: 'userId,userCredentialId,projectId'
    Then I will get the proper status code '<statusCode>'

    Examples: 
      | jsonName                                                         | statusCode | operation | entity              |
      | LippiaTestManager/Users/rq_update_user_credentials_by_project_id | 200        | PUT       | USERCREDENTIALS_LTM |

  @Regresion @Smoke @PWC001_000045
  Scenario Outline: Se crea un test case
    When Realizo un '<operation>' hacia '<entity>' con el json '<jsonName>' obteniendo: 'projectId'
    Then I will get the proper status code '<statusCode>'
    And I save the following fields: 'id' as 'testCaseId'

    Examples: 
      | jsonName                                         | statusCode | operation | entity             |
      | LippiaTestManager/TestsCases/rq_create_test_case | 201        | POST      | CREATETESTCASE_LTM |

  @Regresion @Smok @PWC001_000077
  Scenario Outline: Se crea un user
    When Yo realizo una '<operation>' hacia '<entity>' endpoint con el '<jsonName>' y '<inputParameters>'
    Then I will get the proper status code '<statusCode>'
    And I save the following fields: 'id' as 'userId'

    Examples: 
      | jsonName                               | statusCode | operation | inputParameters                 | entity   |
      | LippiaTestManager/Users/rq_create_user | 201        | POST      | name:teSt1,email:teSt1@test.com | USER_LTM |

  @Regresion @Smoke @PWC001_000078
  Scenario Outline: Se crea un user credentials
    When Realizo un '<operation>' hacia '<entity>' con el json '<jsonName>' obteniendo: 'userId'
    Then I will get the proper status code '<statusCode>'
    And I save the following fields: 'id' as 'userCredentialId'

    Examples: 
      | jsonName                                           | statusCode | operation | entity              |
      | LippiaTestManager/Users/rq_create_user_credentials | 201        | POST      | USERCREDENTIALS_LTM |

  @Regresion @Smoke @PWC001_000079
  Scenario Outline: Se elimina un proyecto asignado a un user credentials
    When Realizo un '<operation>' hacia '<entity>' con el json '<jsonName>' obteniendo: 'userId,userCredentialId,projectId'
    Then I will get the proper status code '<statusCode>'

    Examples: 
      | jsonName                                        | statusCode | operation | entity     |
      | LippiaTestManager/Users/rq_delete_project_by_id | 200        | DELETE    | DELETE_LTM |

  @Regresion @Smoke @Ignore @PWC001_000043
  Scenario Outline: Se elimina un test case execution por el id
    When Yo realizo una '<operation>' hacia '<entity>' endpoint con el '<jsonName>' y '<inputParameters>'
    Then I will get the proper status code '<statusCode>'

    Examples: 
      | jsonName                                                                   | statusCode | operation | inputParameters                                          | entity     |
      | LippiaTestManager/TestCasesExecution/rq_delete_test_cases_executions_by_id | 200        | DELETE    | testCaseExecutionId:fdab01e3-db70-4b43-9176-c24ce6104c19 | DELETE_LTM |

  @Regresion @Smoke
  Scenario Outline: Se elimina un user
    When Realizo un '<operation>' hacia '<entity>' con el json '<jsonName>' obteniendo: 'userId'
    Then I will get the proper status code '<statusCode>'

    Examples: 
      | jsonName                               | statusCode | operation | entity     |
      | LippiaTestManager/Users/rq_delete_user | 200        | DELETE    | DELETE_LTM |

  @Regresion @Smoke
  Scenario Outline: Se elimina un user credential
    When Realizo un '<operation>' hacia '<entity>' con el json '<jsonName>' obteniendo: 'userId,userCredentialId'
    Then I will get the proper status code '<statusCode>'

    Examples: 
      | jsonName                                      | statusCode | operation | entity     |
      | LippiaTestManager/Users/rq_delete_credentials | 200        | DELETE    | DELETE_LTM |

  @Regresion @PWC001_000082
  Scenario Outline: Se obtiene la lista de todas las user credentials
    When Realizo un '<operation>' hacia '<entity>' con el json '<jsonName>' obteniendo: 'userId'
    Then I will get the proper status code '<statusCode>'

    Examples: 
      | jsonName                                        | statusCode | operation | entity              |
      | LippiaTestManager/Users/rq_get_user_credentials | 200        | GET       | USERCREDENTIALS_LTM |

  @Regresion @PWC001_000046
  Scenario Outline: Se obtienen test cases
    When Yo realizo una '<operation>' hacia '<entity>' endpoint con el '<jsonName>' y ''
    Then I will get the proper status code '<statusCode>'

    Examples: 
      | jsonName                                       | statusCode | operation | entity             |
      | LippiaTestManager/TestsCases/rq_get_test_cases | 200        | GET       | CREATETESTCASE_LTM |