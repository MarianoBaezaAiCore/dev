@LippiaTestManager @Ignore
Feature: Tests Suites

  Background:
    Given I perform the Token Request and save the token

  @Regresion @Smoke @Ignore
  Scenario Outline: Se crea un test suite
    When Yo realizo una '<operation>' hacia '<entity>' endpoint con el '<jsonName>' y '<inputParameters>'
    Then I will get the proper status code '<statusCode>'

    Examples:
      | jsonName                                           | statusCode | operation | inputParameters                         | entity              |
      | LippiaTestManager\TestsSuites\rq_create_test_suite | 201        | POST      | id:6f3b3241-2048-4d2b-91a9-fa0abf34dc70 | CREATETESTSUITE_LTM |

  @Regresion @Ignore
  Scenario Outline: Se obtienen test suites
    When Yo realizo una '<operation>' hacia '<entity>' endpoint con el '<jsonName>' y '<inputParameters>'
    Then I will get the proper status code '<statusCode>'

    Examples:
      | jsonName                                         | statusCode | operation | inputParameters                         | entity            |
      | LippiaTestManager\TestsSuites\rq_get_test_suites | 200        | GET       | id:6f3b3241-2048-4d2b-91a9-fa0abf34dc70 | GETTESTSUITES_LTM |

  @Regresion @Ignore
  Scenario Outline: Se obtiene un test suite
    When Yo realizo una '<operation>' hacia '<entity>' endpoint con el '<jsonName>' y '<inputParameters>'
    Then I will get the proper status code '<statusCode>'

    Examples:
      | jsonName                                        | statusCode | operation | inputParameters                                                                        | entity           |
      | LippiaTestManager\TestsSuites\rq_get_test_suite | 200        | GET       | ProjectId:6f3b3241-2048-4d2b-91a9-fa0abf34dc70,Id:58bc06d1-d033-4eea-8b92-4cf595856226 | GETTESTSUITE_LTM |

  @Regresion @Smoke @Ignore
  Scenario Outline: Se actualiza un test suite
    When Yo realizo una '<operation>' hacia '<entity>' endpoint con el '<jsonName>' y '<inputParameters>'
    Then I will get the proper status code '<statusCode>'

    Examples:
      | jsonName                                           | statusCode | operation | inputParameters                                                                        | entity              |
      | LippiaTestManager\TestsSuites\rq_update_test_suite | 200        | PATCH     | ProjectId:6f3b3241-2048-4d2b-91a9-fa0abf34dc70,Id:db4f71a3-17e7-4891-a18d-585f96b52fff | UPDATETESTSUITE_LTM |

  @Regresion @Smoke @Ignore
  Scenario Outline: Se elimina un test suite
    When Yo realizo una '<operation>' hacia '<entity>' endpoint con el '<jsonName>' y '<inputParameters>'
    Then I will get the proper status code '<statusCode>'

    Examples:
      | jsonName                                           | statusCode | operation | inputParameters                                                                        | entity              |
      | LippiaTestManager\TestsSuites\rq_delete_test_suite | 200        | DELETE    | ProjectId:6129d56b-fc9c-40d8-b3d1-213c6945aaa4,Id:775526f0-0194-4959-a6d7-1eb6628a7492 | DELETETESTSUITE_LTM |