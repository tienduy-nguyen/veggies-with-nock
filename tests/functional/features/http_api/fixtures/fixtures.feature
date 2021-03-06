@httpApi @fixtures @offline
Feature: Using fixtures with http API extension

    @yaml
    Scenario: Setting json body from .yaml fixture file
        Given I mock a POST http call to forward request body for path /users/yaml
        And set request json body from yaml_00
        When I POST http://fake.io/users/yaml
        Then response status code should be 200
        And response body should match snapshot

    @yaml
    Scenario: Setting form body from .yaml fixture file
        Given I mock a POST http call to forward request body for path /users/yaml
        And set request form body from yaml_00
        When I POST http://fake.io/users/yaml
        Then response status code should be 200
        And response body should match snapshot

    @yml
    Scenario: Setting json body from .yml fixture file
        Given I mock a POST http call to forward request body for path /users/yml
        And set request json body from yaml_01
        When I POST http://fake.io/users/yml
        Then response status code should be 200
        And response body should match snapshot

    @yml
    Scenario: Setting form body from .yml fixture file
        Given I mock a POST http call to forward request body for path /users/yml
        And set request form body from yaml_01
        When I POST http://fake.io/users/yml
        Then response status code should be 200
        And response body should match snapshot

    @txt
    Scenario: Setting json body from .txt fixture file
        Given I mock a POST http call to forward request body for path /users/txt
        And set request json body from text_00
        When I POST http://fake.io/users/txt
        Then response status code should be 200
        And response body should match snapshot

    @txt
    Scenario: Setting form body from .txt fixture file
        Given I mock a POST http call to forward request body for path /users/txt
        And set request form body from text_00
        When I POST http://fake.io/users/txt
        Then response status code should be 200
        And response body should match snapshot

    @js
    Scenario: Setting json body from .js fixture file
        Given I mock a POST http call to forward request body for path /users/js
        And set request json body from module_00
        When I POST http://fake.io/users/js
        Then response status code should be 200
        And response body should match snapshot
    
    @js
    Scenario: Setting form body from .js fixture file
        Given I mock a POST http call to forward request body for path /users/js
        And set request form body from module_00
        When I POST http://fake.io/users/js
        Then response status code should be 200
        And response body should match snapshot

    @json
    Scenario: Setting json body from .json fixture file
        Given I mock a POST http call to forward request body for path /users/json
        And set request json body from json_00
        When I POST http://fake.io/users/json
        Then response status code should be 200
        And response body should match snapshot

    @json
    Scenario: Setting form body from .json fixture file
        Given I mock a POST http call to forward request body for path /users/json
        And set request form body from json_00
        When I POST http://fake.io/users/json
        Then response status code should be 200
        And response body should match snapshot
