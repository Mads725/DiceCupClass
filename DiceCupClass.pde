class DiceCup {

  int pos = 0;
  Dice[] dice = new Dice[10];

  //Construcktor
  public DiceCup() {
    //Dice[] dice = new Dice[10];
  }

  //add Dice method. Adds a new random die to the cup.
  void addDie() {
    dice[pos] = new Dice((int)random(0, 256), 
      (int)random(0, 256));
    pos++;
  }

  //shake method. Rolls all the dice in the cup
  void shake() {
    for (int i=0; i<dice.length; i++) {
      if (dice[i]!=null) {
        dice[i].roll();
      }
    }
  }

  //draw method. Draws all the dice in the cup on a line.
  void draw(int x, int y, int size) {
    background(255);
    int xPos = x;

    for (int i=0; i<dc.dice.length; i++) {
      if (dc.dice[i]!=null) {
        dc.dice[i].draw(xPos, y, size);
        xPos=xPos+size+(size/2);
        //        println(dc.dice[i].rollInt);
      }
    }
  }
} //DiceCup class end --------------------

DiceCup dc = new DiceCup();

void setup() {
  size(1600, 600);

  rectMode(CENTER);
  //DiceCup dc = new DiceCup();

  dc.addDie();
  dc.addDie();
  dc.addDie();
  dc.shake();
  dc.draw(75, 75, 100);
}

/*  TODO
 B.1 
 B.2
 Se kommentare.
 HELE C
 */
