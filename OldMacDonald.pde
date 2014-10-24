// Sasha Gonzalez CP1 OldMacDonald Assignment
void setup()
{
  Farm farmAnimals= new Farm();
  farmAnimals.animalSounds();
}

interface Animal
{
  public String getSound();
  public String getType();
}

class NamedCow extends Cow
{
  protected String CowName;
  public NamedCow(String type, String name, String sound)
  {
    myType=type;
    mySound=sound;
    CowName = name;
  }
  public String getName()
  {
    return CowName;
  }
}

class Cow implements Animal
{
  protected String myType;     
  protected String mySound;      
  public Cow(String type, String sound)    
  {         
    myType = type;         
    mySound = sound;
  }
  public Cow()
  {
    myType= "unkwon";
    mySound= "unkown";
  }
  public String getSound() {
    return mySound;
  }
  public String getType() {
    return myType;
  }
}  

class Chick implements Animal
{
  private String myType;     
  private String mySound; 
  private  double myNum;
  public Chick(String type, String sound1, String sound2)    
  {         
    myType = type;         
    myNum=Math.random();
    if (myNum > .5) { 
      mySound=sound1;
    } else { 
      mySound=sound2;
    }
  }
  public String getSound() {
    return mySound;
  }
  public String getType() {
    return myType;
  }
}  

class Pig implements Animal
{
  private String myType;     
  private String mySound;      
  public Pig(String type, String sound)    
  {         
    myType = type;         
    mySound = sound;
  }
  public String getSound() {
    return mySound;
  }
  public String getType() {
    return myType;
  }
}  

class Farm 
{     
  private Animal[] aBunchOfAnimals = new Animal[3];    
  public Farm()    
  {       
    aBunchOfAnimals[0] = new NamedCow("cow", "Elsie", "moo");          
    aBunchOfAnimals[1] = new Chick("chick", "cheep", "cluck");
    aBunchOfAnimals[2] = new Pig("pig", "oink");
  }     
  public void animalSounds()    
  {
    for (int nI=0; nI < aBunchOfAnimals.length; nI++) 
    {             
      System.out.println( aBunchOfAnimals[nI].getType() + " goes " + aBunchOfAnimals[nI].getSound() );
    }       
    System.out.println( "The cow is known as " + ((NamedCow)aBunchOfAnimals[0]).getName() );
  }
}
