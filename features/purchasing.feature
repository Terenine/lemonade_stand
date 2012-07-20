Feature: Purchasing lemonade
  In order to quench my thirst
  As a thirsty consumer 
  I want to purchase lemonade with cash

Background:
  Given lemonade exists
  And the store has $100
  And I have $100
  And lemonade costs $5

Scenario: I am flush with cash
  When I purchase 1 lemonade
  Then I should have $95
  And the store should have $105
  And I should have 1 lemonade

Scenario: I am broke

Scenario: I am a deadbeat

Scenario: I am a deadbeat (but Wesley likes me)


