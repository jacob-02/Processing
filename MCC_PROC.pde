import processing.serial.*;

PImage bg;

int r=0;

Serial myPort;

void setup()
{
  size(259, 194);
  bg = loadImage ("robocar.png");
  myPort = new Serial(this, "/dev/cu.usbmodem14201", 9600);
}

void draw()
{
  background (r);
  if (mousePressed && (mouseButton == LEFT))
  {
    myPort.write('1');
  }
  if (mousePressed && (mouseButton == RIGHT))
  {
    myPort.write('0');
  }
  if(mousePressed && (mouseButton == CENTER))
  {
    myPort.write('2');
  }
}
