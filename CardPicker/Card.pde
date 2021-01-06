class Card{
 
 int a;
 
 Card(int _a){
    a = _a + 1;
 } 
  
 void display(){
    makeCard();

    
 }
  
 void makeCard(){
    fill(0);
    stroke(255);
    strokeWeight(4);
    rect(100,200,100,200);

    fill(255);
    text(a, 65, 120);
    
    //Rotates the text field
    push();
      fill(255);
      translate(135,280);
      rotate(PI);
      text(a, 0, 0);
    pop();
 }
  
}
