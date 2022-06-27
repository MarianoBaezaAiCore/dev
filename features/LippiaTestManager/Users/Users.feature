@Users @LippiaTestManager
Feature: Users

  Background:
    Given I perform the Token Request and save the token

  @Regresion 
  Scenario Outline: Obtengo los proyectos para guardar la response y utilizarla posteriormente en el update de user credentials por project id
    When Yo realizo una '<operation>' hacia '<entity>' endpoint con el '<jsonName>' y '<inputParameters>'
    Then I will get the proper status code '<statusCode>'
    And I save the following fields of projects response: 'id' as 'projectId'

    Examples: 
      | jsonName                                                | statusCode | operation | inputParameters | entity                   |
      | LippiaTestManager/Suggesters/rq_get_projects_suggesters | 200        | GET       | text:automation | GETPROJECTSUGGESTERS_LTM |

  @Regresion @Smoke 
  Scenario Outline: Se actualiza un user
    When Realizo un '<operation>' hacia '<entity>' con el json '<jsonName>' obteniendo: 'userId'
    Then I will get the proper status code '<statusCode>'

    Examples: 
      | jsonName                               | statusCode | operation | entity   |
      | LippiaTestManager/Users/rq_update_user | 200        | PATCH     | USER_LTM |

  @Regresion 
  Scenario Outline: Se actualiza un user credential mediante el user id
    When Realizo un '<operation>' hacia '<entity>' con el json '<jsonName>' obteniendo: 'userId, userCredentialId'
    Then I will get the proper status code '<statusCode>'

    Examples: 
      | jsonName                                                 | statusCode | operation | entity              |
      | LippiaTestManager/Users/rq_update_user_credentials_by_id | 200        | PATCH     | USERCREDENTIALS_LTM |

  @Regresion
  Scenario Outline: Se agrega un proyecto a un user credentials
    When Realizo un '<operation>' hacia '<entity>' con el json '<jsonName>' obteniendo: 'userId,userCredentialId,projectId'
    Then I will get the proper status code '<statusCode>'

    Examples: 
      | jsonName                                                         | statusCode | operation | entity              |
      | LippiaTestManager/Users/rq_update_user_credentials_by_project_id | 200        | PUT       | USERCREDENTIALS_LTM |

  @Regresion @Smok
  Scenario Outline: Se crea un user
    When Yo realizo una '<operation>' hacia '<entity>' endpoint con el '<jsonName>' y '<inputParameters>'
    Then I will get the proper status code '<statusCode>'
    And I save the following fields: 'id' as 'userId'

    Examples: 
      | jsonName                               | statusCode | operation | inputParameters                 | entity   |
      | LippiaTestManager/Users/rq_create_user | 201        | POST      | name:teSt1,email:teSt1@test.com | USER_LTM |

  @Regresion @Smoke
  Scenario Outline: Se crea un user credentials
    When Realizo un '<operation>' hacia '<entity>' con el json '<jsonName>' obteniendo: 'userId'
    Then I will get the proper status code '<statusCode>'
    And I save the following fields: 'id' as 'userCredentialId'

    Examples: 
      | jsonName                                           | statusCode | operation | entity              |
      | LippiaTestManager/Users/rq_create_user_credentials | 201        | POST      | USERCREDENTIALS_LTM |

  @Regresion @Smoke
  Scenario Outline: Se elimina un proyecto asignado a un user credentials
    When Realizo un '<operation>' hacia '<entity>' con el json '<jsonName>' obteniendo: 'userId,userCredentialId,projectId'
    Then I will get the proper status code '<statusCode>'

    Examples: 
      | jsonName                                        | statusCode | operation | entity     |
      | LippiaTestManager/Users/rq_delete_project_by_id | 200        | DELETE    | DELETE_LTM |

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

  @Regresion 
  Scenario Outline: Se obtiene la lista de todas las user credentials
    When Realizo un '<operation>' hacia '<entity>' con el json '<jsonName>' obteniendo: 'userId'
    Then I will get the proper status code '<statusCode>'

    Examples: 
      | jsonName                                        | statusCode | operation | entity              |
      | LippiaTestManager/Users/rq_get_user_credentials | 200        | GET       | USERCREDENTIALS_LTM |

  @Regresion
  Scenario Outline: Se obtiene la lista de users
    When Yo realizo una '<operation>' hacia '<entity>' endpoint con el '<jsonName>' y ''
    Then I will get the proper status code '<statusCode>'

    Examples: 
      | jsonName                                 | statusCode | operation | entity   |
      | LippiaTestManager/Users/rq_get_list_user | 200        | GET_LIST  | USER_LTM |

  @Regresion @Smoke
  Scenario Outline: Se obtiene un user
    When Realizo un '<operation>' hacia '<entity>' con el json '<jsonName>' obteniendo: 'userId'
    Then I will get the proper status code '<statusCode>'

    Examples: 
      | jsonName                            | statusCode | operation | entity   |
      | LippiaTestManager/Users/rq_get_user | 200        | GET       | USER_LTM |