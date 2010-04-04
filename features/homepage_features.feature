Feature: Locate Within3
    In order to track team member locations
    As an team member
    I want to see locations and team members

    Scenario: Homepage
        Given there are people at locations
        When I go to the homepage
        Then I should see a list of active members
        And I should see a list of active locations

