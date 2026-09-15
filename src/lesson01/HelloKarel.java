import becker.robots.*;

public class HelloKarel {
    public static void main(String[] args) {
        City city = new City();
        city.setFrameTitle("Lesson 1 - Hello Karel");

        RobotSE karel = new RobotSE(city, 1, 1, Direction.EAST);

        karel.move();
        karel.move();
        
    }
}
