Feature: Projects

  @Regresion @Smoke @PWC001_000024
  Scenario Outline: Se actualiza un proyecto por id
    When Realizo un '<operation>' hacia '<entity>' con el json '<jsonName>' obteniendo: 'projectId'
    Then I will get the proper status code '<statusCode>'

    Examples: 
      | jsonName                                            | statusCode | operation | entity            |
      | LippiaTestManager/Projects/rq_update_projects_by_id | 200        | PATCH     | CREATEPROJECT_LTM |

  @Regresion @Smoke @PWC001_000025
  Scenario Outline: Se crea tags para el proyecto por id
    When Realizo un '<operation>' hacia '<entity>' con el json '<jsonName>' obteniendo: 'projectId'
    Then I will get the proper status code '<statusCode>'
    And I save the following fields: 'id' as 'tagId'

    Examples: 
      | jsonName                                                | statusCode | operation | entity        |
      | LippiaTestManager/Projects/rq_create_project_tags_by_id | 200        | PUT       | CREATETAG_LTM |

  @Regresion @Smoke @PWC001_000021
  Scenario Outline: Se crea un proyecto
    When Yo realizo una '<operation>' hacia '<entity>' endpoint con el '<jsonName>' y ''
    Then I will get the proper status code '<statusCode>'
    And I save the following fields: 'id' as 'projectId'

    Examples: 
      | jsonName                                     | statusCode | operation | entity            |
      | LippiaTestManager/Projects/rq_create_project | 201        | POST      | CREATEPROJECT_LTM |

  @Regresion @Smoke @PWC001_000029
  Scenario Outline: Se elimina un proyecto
    When Realizo un '<operation>' hacia '<entity>' con el json '<jsonName>' obteniendo: 'projectId'
    Then I will get the proper status code '<statusCode>'

    Examples: 
      | jsonName                                     | statusCode | operation | entity            |
      | LippiaTestManager/Projects/rq_delete_project | 200        | DELETE    | DELETEPROJECT_LTM |

  @Regresion @Smoke @PWC001_000026
  Scenario Outline: Se elimina un tag de un proyecto
    When Realizo un '<operation>' hacia '<entity>' con el json '<jsonName>' obteniendo: 'projectId,tagId'
    Then I will get the proper status code '<statusCode>'

    Examples: 
      | jsonName                                         | statusCode | operation | entity     |
      | LippiaTestManager/Projects/rq_delete_project_tag | 200        | DELETE    | DELETE_LTM |

  @Regresion @PWC001_000028
  Scenario Outline: Se obtiene el filtro de un proyecto
    When Yo realizo una '<operation>' hacia '<entity>' endpoint con el '<jsonName>' y '<inputParameters>'
    Then I will get the proper status code '<statusCode>'

    Examples: 
      | jsonName                                                  | statusCode | operation | inputParameters | entity            |
      | LippiaTestManager/Projects/rq_get_projects_filter_by_text | 200        | GET       | text:prueba     | CREATEPROJECT_LTM |

  @Regresion @Ignore @PWC001_000027
  Scenario Outline: Se obtienen todos los agregables de un proyecto
    When Realizo un '<operation>' hacia '<entity>' con el json '<jsonName>' obteniendo los parametros: 'id' y seteando 'text:automatizado'
    Then I will get the proper status code '<statusCode>'

    Examples: 
      | jsonName                                                    | statusCode | operation | entity            |
      | LippiaTestManager/Projects/rq_get_projects_aggregable_by_id | 200        | GET       | CREATEPROJECT_LTM |

  @Regresion @PWC001_000022
  Scenario Outline: Se obtienen todos los proyectos
    When Yo realizo una '<operation>' hacia '<entity>' endpoint con el '<jsonName>' y ''
    Then I will get the proper status code '<statusCode>'

    Examples: 
      | jsonName                                   | statusCode | operation | entity            |
      | LippiaTestManager/Projects/rq_get_projects | 200        | GET       | CREATEPROJECT_LTM |

  @Regresion @PWC001_000023
  Scenario Outline: Se obtienen todos los proyectos
    When Realizo un '<operation>' hacia '<entity>' con el json '<jsonName>' obteniendo: 'projectId'
    Then I will get the proper status code '<statusCode>'

    Examples: 
      | jsonName                                         | statusCode | operation | entity            |
      | LippiaTestManager/Projects/rq_get_projects_by_id | 200        | GET       | CREATEPROJECT_LTM |