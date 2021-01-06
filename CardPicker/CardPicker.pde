ArrayList<Card> cardList = new ArrayList<Card>();
int cardNumber;
int score;
int cardsLeft = 52;
boolean[] isPicked = new boolean[60];


void setup() {
  rectMode(CENTER);
  textAlign(CENTER);
  size(800, 800);
  for (int i = 0; i<52; i++) {
    cardList.add(new Card(i));
  }
}

void draw() {
  clear();

  text("Score = " + score, 400, 200);
  text("Cards Left = " + (cardsLeft), 400, 300);
  showPickedCards();

  for (Card c : cardList) {
    if (c.a == cardNumber) {
      c.display();
    }
  }
}

void mousePressed() {
  cardNumber = int(random(1, 52));
  println(cardNumber);

  if (isPicked[cardNumber] == true) {
    println("I have already seen this card");
    cardNumber = pickNewCard();
  }

  if (isPicked[cardNumber] == false) {
    println("I haven't seen this card");
    cardsLeft--;
    println("Cards left: " + cardsLeft);
    score = score + cardNumber;
    isPicked[cardNumber] = true;
  }
}

int pickNewCard() {
  int NewCard = 0;
  for (int i = 0; i<52; i++) {
    NewCard++;
    if (isPicked[NewCard] == false) {
      println("new card found = " + NewCard);
      return NewCard;
    }
  }
  return NewCard;
}

void showPickedCards() {
  for (int i=0; i<53; i++) {
    if (isPicked[i] == true) {
      if(i <= 26){
        text(i, 50+20*i, 400);
      }
      if(i > 26){
        text(i, -450+20*i,500);
      }
      
    }
  }
}
