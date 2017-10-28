"The raffle game"
The player can choose game's looks. He chooses number 1 or 2 and and takes look of game.
The player sees a board with six cells. Each cell hides a random digit from 1 to 10. Each cell is a sign number from 0 to 5.
The player chooses the cell number by entering its number from the keyboard.
 When choosing a cell, the program outputs the result of the attempt.
if the digit is 5, then the player wins and reads the greetings. The other situation will be defeat.


## Development

run the game 

``` ruby play.rb ```

run tests

```rspec spec```

open console

```rake console```

### Extentions

Game support different themes/drawers.
It is possible to add a new look to the game 
by implemnting a new drawer. 

#### How to implement a custom drawer

THe drawer module should implement .draw_cells method and be placed into ./drawers folder.

See example implementation of one of the drawer in the ./drawers folder.

