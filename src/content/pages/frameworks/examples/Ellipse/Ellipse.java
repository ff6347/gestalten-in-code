import java.lang.*;
import java.util.*;
import java.util.List;
import java.io.*;
import java.awt.*;
import java.awt.event.*;
import java.awt.geom.*;

public class Ellipse extends Frame {

  public void paint(Graphics g) {
     Graphics2D ga = (Graphics2D)g;
     ga.setPaint(Color.red);
     // ga.drawArc(50,50,300,150, 0, 360);
     ga.draw(new Ellipse2D.Double(50, 50, 100, 100));
  }

    public static void main(String args[]) {
        Ellipse frame = new Ellipse();
        frame.addWindowListener(
            new WindowAdapter(){
                public void windowClosing(WindowEvent we){
                    System.exit(0);
            }
        }
    );

      frame.setSize(400, 400);
      frame.setVisible(true);
   }
}