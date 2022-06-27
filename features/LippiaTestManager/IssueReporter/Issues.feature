@LippiaTestManager @IssueReporter
Feature: Tests Suites of Issue Reporter endpoint

  Background:
    Given I perform the Token Request and save the token

  @Regresion
  Scenario Outline: Obtengo los proyectos por gitlab token
    When Yo realizo una '<operation>' hacia '<entity>' endpoint con el '<jsonName>' y '<inputParameters>'
    Then I will get the proper status code '<statusCode>'

    Examples:
      | jsonName                                                     | statusCode | operation | inputParameters                        | entity                |
      | LippiaTestManager/IssueReporter/rq_get_projects_gitlab_token | 201        | POST      | gitlabToken:glpat-dtkmdq2UMiZbd3e_E6t5 | GETPROJECTSGITLAB_LTM |

  @Regresion
  Scenario Outline: Obtengo los tipos de issues para gitlab
    When Yo realizo una '<operation>' hacia '<entity>' endpoint con el '<jsonName>' y ''
    Then I will get the proper status code '<statusCode>'

    Examples:
      | jsonName                                                   | statusCode | operation | entity                   |
      | LippiaTestManager/IssueReporter/rq_get_issues_types_gitlab | 201        | POST      | GETISSUESTYPESGITLAB_LTM |

  @Regresion @Smoke
  Scenario Outline: Se crea un issue para un proyecto de gitlab
    When Yo realizo una '<operation>' hacia '<entity>' endpoint con el '<jsonName>' y '<inputParameters>'
    Then I will get the proper status code '<statusCode>'

    Examples:
      | jsonName                                               | statusCode | operation | inputParameters                                                          | entity                |
      | LippiaTestManager/IssueReporter/rq_create_issue_gitlab | 201        | POST      | gitlabToken:glpat-dtkmdq2UMiZbd3e_E6t5,type:issue,projectId:32929060     | CREATEISSUEGITLAB_LTM |
      | LippiaTestManager/IssueReporter/rq_create_issue_gitlab | 201        | POST      | gitlabToken:glpat-dtkmdq2UMiZbd3e_E6t5,type:incident,projectId:32929060  | CREATEISSUEGITLAB_LTM |
      | LippiaTestManager/IssueReporter/rq_create_issue_gitlab | 201        | POST      | gitlabToken:glpat-dtkmdq2UMiZbd3e_E6t5,type:test_case,projectId:32929060 | CREATEISSUEGITLAB_LTM |