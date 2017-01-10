## Ruby Robot (almost behave like Cubetto from PrimoToys)

The application is a simulaton of a toy robot moving on a square tabletop, of dimensions 5 units x 5 units. 
This is just a small app (few hours work) that I developed in mini code kata to refresh my coding skills. I have been absent of fulltime coding for 4-5 years. It was quite fun.

## Environment

Ruby 2.3

## Tests

Using [MiniTest](https://github.com/seattlerb/minitest). All tests are placed on test/

```shell
rake test
```

## How to run

```shell
ruby main.rb
```

## Commands to interact with the robot

* PLACE will put the toy robot on the table in position X,Y and facing NORTH, SOUTH, EAST or WEST. The first valid command to the robot is a PLACE command, after that, any sequence of commands may be issued, in any order, including another PLACE ommand. The application should discard all commands in the sequence until a valid PLACE command has been executed.
* MOVE will move the toy robot one unit forward in the direc8on it is currently facing.
* LEFT and RIGHT will rotate the robot 90 degrees in the specified direction without changing the posi8on of the robot.
* REPORT will announce the X,Y and F of the robot. This can be in any form, but standard output is sufficient.

## Example

PLACE 0,0,NORTH  
MOVE  
REPORT  
Output: 0,1,NORTH  


PLACE 0,0,NORTH  
LEFT  
REPORT  
Output: 0,0,WEST  


PLACE 1,2,EAST  
MOVE  
MOVE  
LEFT  
MOVE  
REPORT  
Output: 3,3,NORTH  

## License

(The MIT License)  

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the 'Software'), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:  

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.  

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.  
