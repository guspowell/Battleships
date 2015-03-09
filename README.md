#BattleShips

In week 2 of Makers Academy, we were tasked with recreating the old game Battleships in Ruby to further our understanding of OOD in Ruby and the importance of TDD.

Collaborators
------------------
[Gus Powell](https://github.com/guspowell) <br>
[Oliver Lucas](https://github.com/olucas92)

Installation, Testing and Playing the Game
------------------

1) Clone the repo:<br>
```
git clone git@github.com:guspowell/Airport_challenge.git
cd Airport_challenge
```
2) To run the tests: ```rspec```

3) To load the game in IRB
```
git clone git@github.com:guspowell/Airport_challenge.git
cd Airport_challenge
require './lib/ship.rb'
require './lib/cell.rb'
require './lib/board.rb'
require './lib/player.rb'
```

##Class Responsibility Collaboration Cards

###Cell
Responsibility | Collaborators
---------------|--------------
be hit         | Player
damage ship    | Ship
place ships    | Board, (Fleet), Grid

###Board
Responsibility | Collaborators
---------------|--------------
display game   | Player, Cells
place Ships    | Player, Fleet, Cells

###Ship
Responsibility | Collaborators
---------------|--------------
be placed      | Player, Fleet, Board, Cells
be sunk        | Cells, Fleet
be damaged     | Cell, Player

###Fleet
Responsibility | Collaborators
---------------|--------------
place Ships    | Player, Board, Cells, Ship
create Ships   | Ships
declare winner | Ship, Player

###Player
Responsibility | Collaborators
---------------|--------------
hit cell       | Cell
place Ships    | Fleet, Ships, Cells, Board
display game   | Player, Cells, Board
