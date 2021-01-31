import processing.serial.*;

Serial myPort;

void setup()
{
  size (300, 300);
  myPort = new Serial(this, "/dev/cu.usbmodem14201", 9600);
}

void draw()
{
  
}

void keyPressed()
{
  switch (key)
  {
    case 'w':
    myPort.write('2');
    break;
    
    case 'a':
    myPort.write('1');
    break;
    
    case 's':
    myPort.write('3');
    break;
    
    case 'd':
    myPort.write('0');
    break;
  }
}
