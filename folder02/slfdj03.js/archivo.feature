@LippiaTestManagerFront @TestRuns
Feature: Vista previa archivos

#Como usuario de LTM
#Necesito poder previsualizar los adjuntos del test como una calesita
#Para poder ver las imagenes attacheadas a un test de un test run

  @Smoke @Regresion
  Scenario Outline: Adjuntar archivos a un Test Run Execution.
    Given El cliente realiza el login con el usuario automation.ltm y contraseña 1234
    And se dirije a la pantalla Runs
    When hace click en el boton elipsis del test run <runName> con estado <estado>
    And selecciona la opcion <opcionTestRun> de la lista desplegable en Runs
    And el usuario adjunta el archivo <archivo> al <posicion> test
    Then verifico que se adjunto el archivo <archivo> al <posicion> test

    Examples:
      | runName                   | estado      | opcionTestRun| archivo            | posicion |
      | Run editado de Automation | IN PROGRESS | Ver          | test_run.PNG       | 1        |
      | Run editado de Automation | IN PROGRESS | Ver          | Adicionar_test.pdf | 1        |


  @Smoke
  Scenario Outline: Visualizar archivos en el reporte de un test run desde Proyectos.
    Given El cliente realiza el login con el usuario automation.ltm y contraseña 1234
    And se dirije a la pantalla Proyectos
    And hace clic en el boton elipsis del proyecto <proyecto>
    And selecciona la opcion <opcion> de la lista desplegable en Proyectos
    When hace click en el boton elipsis del test run <runName> con estado <estado>
    And selecciona la opcion <opcionTestRun> de la lista desplegable en Runs
    And hace click sobre el archivo <archivo>
    Then se verifica que se abrio una nueva pestaña para el archivo

    Examples:
      | proyecto                       | runName                   | opcion | estado      | opcionTestRun  | archivo            |
      | Proyecto editado de Automation | Run editado de Automation | Runs   | IN PROGRESS | Ir al informe  | Adicionar_test.pdf |