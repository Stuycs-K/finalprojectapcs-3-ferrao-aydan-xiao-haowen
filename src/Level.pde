public abstract class Level {
  ArrayList<Platform> platformList = new ArrayList<Platform>();
  
  public ArrayList<Platform> getList() {
    return platformList;
  }
  
  public abstract boolean end(); 
  public abstract void createLevel();
}
