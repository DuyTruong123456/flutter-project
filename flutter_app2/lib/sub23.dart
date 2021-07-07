
import 'package:flutter/material.dart';
import'main.dart';
import'submain.dart';
void main2() {
  runApp(MyApp23());
}

class MyApp23 extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
List index=[];
List text=[];
List visi=[];
List enable=[];
var a;
List frontcolor=[];

var result=0;
void value() {
for(int i=0;i<=352;i++)
{
  index.add(-1);
  text.add("-");
  visi.add(false);
  enable.add(true);
  frontcolor.add(Colors.white);

}
}
void checkwin()
{
  for(int i=3;i<=18;i++)
    {
      for(int j=3;j<=12;j++)
        {
          if(index[14*i+j-14]==0&&index[14*i+j-14-15]==0&&index[14*i+j-14-15-15]==0&&index[14*i+j-14+15]==0&&index[14*i+j-14+15+15]==0)
            {
              print('x win');
              a='x win';
              result=1;
            }
          if(index[14*i+j-14]==0&&index[14*i+j-14-13]==0&&index[14*i+j-14-13-13]==0&&index[14*i+j-14+13]==0&&index[14*i+j-14+13+13]==0)
          {
            print('x win');
            a='x win';
            result=1;
          }
          if(index[14*i+j-14]==0&&index[14*i+j-14-1]==0&&index[14*i+j-14-1-1]==0&&index[14*i+j-14+1]==0&&index[14*i+j-14+1+1]==0)
          {
            print('x win');
            a='x win';
            result=1;
          }
          if(index[14*i+j-14]==0&&index[14*i+j-14-14]==0&&index[14*i+j-14-14-14]==0&&index[14*i+j-14+14]==0&&index[14*i+j-14+14+14]==0)
          {
            print('x win');
            a='x win';
            result=1;
          }
          if(index[14*i+j-14]==1&&index[14*i+j-14-15]==1&&index[14*i+j-14-15-15]==1&&index[14*i+j-14+15]==1&&index[14*i+j-14+15+15]==1)
          {
            print('o win');
            a='o win';
            result=1;
          }
          if(index[14*i+j-14]==1&&index[14*i+j-14-13]==1&&index[14*i+j-14-13-13]==1&&index[14*i+j-14+13]==1&&index[14*i+j-14+13+13]==1)
          {
            print('o win');
            a='o win';
            result=1;
          }
          if(index[14*i+j-14]==1&&index[14*i+j-14-1]==1&&index[14*i+j-14-1-1]==1&&index[14*i+j-14+1]==1&&index[14*i+j-14+1+1]==1)
          {
            print('o win');
            a='o win';
            result=1;
          }
          if(index[14*i+j-14]==1&&index[14*i+j-14-14]==1&&index[14*i+j-14-14-14]==1&&index[14*i+j-14+14]==1&&index[14*i+j-14+14+14]==1)
          {
            print('o win');
            a='o win';
            result=1;
          }
        }
    }
  for(int i=1;i<=2;i++)
    {
      for(int j=3;j<=12;j++)
        {if(index[14*i+j-14]==0&&index[14*i+j-14-1]==0&&index[14*i+j-14-1-1]==0&&index[14*i+j-14+1]==0&&index[14*i+j-14+1+1]==0)
        {
          print('x win');
          a='x win';
          result=1;
        }
          if(index[14*i+j-14]==1&&index[14*i+j-14-1]==1&&index[14*i+j-14-1-1]==1&&index[14*i+j-14+1]==1&&index[14*i+j-14+1+1]==1)
          {
            print('o win');
            a='o win';
            result=1;
          }
        }
    }
  for(int i=19;i<=20;i++)
  {
    for(int j=3;j<=12;j++)
    {if(index[14*i+j-14]==0&&index[14*i+j-14-1]==0&&index[14*i+j-14-1-1]==0&&index[14*i+j-14+1]==0&&index[14*i+j-14+1+1]==0)
    {
      print('x win');
      a='x win';
      result=1;
    }
    if(index[14*i+j-14]==1&&index[14*i+j-14-1]==1&&index[14*i+j-14-1-1]==1&&index[14*i+j-14+1]==1&&index[14*i+j-14+1+1]==1)
    {
      print('o win');
      a='o win';
      result=1;
    }
    }
  }
  for(int i=3;i<=18;i++)
    {
      for(int j=1;j<=2;j++)
        {
          if(index[14*i+j-14]==0&&index[14*i+j-14-14]==0&&index[14*i+j-14-14-14]==0&&index[14*i+j-14+14]==0&&index[14*i+j-14+14+14]==0)
          {
            print('x win');
            a='x win';
            result=1;
          }
          if(index[14*i+j-14]==1&&index[14*i+j-14-14]==1&&index[14*i+j-14-14-14]==1&&index[14*i+j-14+14]==1&&index[14*i+j-14+14+14]==1)
          {
            print('o win');
            a='o win';
            result=1;
          }
        }
    }
  for(int i=3;i<=18;i++)
  {
    for(int j=13;j<=14;j++)
    {
      if(index[14*i+j-14]==0&&index[14*i+j-14-14]==0&&index[14*i+j-14-14-14]==0&&index[14*i+j-14+14]==0&&index[14*i+j-14+14+14]==0)
      {
        print('x win');
        a='x win';
        result=1;
      }
      if(index[14*i+j-14]==1&&index[14*i+j-14-14]==1&&index[14*i+j-14-14-14]==1&&index[14*i+j-14+14]==1&&index[14*i+j-14+14+14]==1)
      {
        print('o win');
        a='o win';
        result=1;
      }
    }
  }
}
var position=[-1,1,-14,14,-13,15,13,-15];
void countindex()
{
for(int i=1;i<=20;i++) {
  for (int j = 1; j <= 14; j++) {
    if (index[14 * i + j - 14] == 0) {
      for (int k = 0; k < 8; k++) {
        if (14 * i + j - 14 + 4*position[k] > 0 &&
            14 * i + j - 14 + 4*position[k] <= 352) {
          if (enable[14 * i + j - 14 + position[k]] == true) {
            if (index[14 * i + j - 14 + position[k]] > -2 &&
                index[14 * i + j - 14 + 2 * position[k]] < 0 &&
                index[14 * i + j - 14 + 3 * position[k]] < 0 &&
                index[14 * i + j - 14 + 4 * position[k]] < 0) {
              index[14 * i + j - 14 + position[k]] = -2;
            }
            if (index[14 * i + j - 14 + position[k]] > -3 &&
                index[14 * i + j - 14 + 2 * position[k]] == 0 &&
                index[14 * i + j - 14 + 3 * position[k]] < 0 &&
                index[14 * i + j - 14 + 4 * position[k]] < 0) {
              index[14 * i + j - 14 + position[k]] = -3;
            }
            if (index[14 * i + j - 14 + position[k]] > -4 &&
                index[14 * i + j - 14 + 2 * position[k]] == 0 &&
                index[14 * i + j - 14 + 3 * position[k]] == 0 &&
                index[14 * i + j - 14 + 4 * position[k]] < 0) {
              index[14 * i + j - 14 + position[k]] = -4;
            }
            if (index[14 * i + j - 14 + position[k]] > -5 &&
                index[14 * i + j - 14 + 2 * position[k]] == 0 &&
                index[14 * i + j - 14 + 3 * position[k]] == 0 &&
                index[14 * i + j - 14 + 4 * position[k]] == 0) {
              index[14 * i + j - 14 + position[k]] = -5;
            }
          }
          else if (enable[14 * i + j - 14 + position[k]] == false &&
              index[14 * i + j - 14 + position[k]] == 0 &&
              enable[14 * i + j - 14 + 2 * position[k]] == true) {
            if (index[14 * i + j - 14 + 2 * position[k]] > -3 &&
                index[14 * i + j - 14 + 3 * position[k]] < 0 &&
                index[14 * i + j - 14 + 4 * position[k]] < 0) {
              index[14 * i + j - 14 + 2 * position[k]] = -3;
            }
            if (index[14 * i + j - 14 + 2 * position[k]] > -4 &&
                index[14 * i + j - 14 + 3 * position[k]] == 0 &&
                index[14 * i + j - 14 + 4 * position[k]] < 0) {
              index[14 * i + j - 14 + 2 * position[k]] = -4;
            }
            if (index[14 * i + j - 14 + 2 * position[k]] > -5 &&
                index[14 * i + j - 14 + 3 * position[k]] == 0 &&
                index[14 * i + j - 14 + 4 * position[k]] == 0) {
              index[14 * i + j - 14 + 2 * position[k]] = -5;
            }
          }
          else if (enable[14 * i + j - 14 + position[k]] == false &&
              index[14 * i + j - 14 + position[k]] == 0 &&
              enable[14 * i + j - 14 + 2 * position[k]] == false &&
              index[14 * i + j - 14 + 2 * position[k]] == 0 &&
              enable[14 * i + j - 14 + 3 * position[k]] == true) {
            if (index[14 * i + j - 14 + 3 * position[k]] > -4)
              index[14 * i + j - 14 + 3 * position[k]] = -4;
          }
          else if (enable[14 * i + j - 14 + position[k]] == false &&
              index[14 * i + j - 14 + position[k]] == 0 &&
              enable[14 * i + j - 14 + 2 * position[k]] == false &&
              index[14 * i + j - 14 + 2 * position[k]] == 0 &&
              enable[14 * i + j - 14 + 3 * position[k]] == false &&
              index[14 * i + j - 14 + 3 * position[k]] == 0 &&
              enable[14 * i + j - 14 + 4 * position[k]] == true) {
            if (index[14 * i + j - 14 + 4 * position[k]] > -5)
              index[14 * i + j - 14 + 4 * position[k]] = -5;
          }
        }
      }
    }
  }
}
/*for(int i=1;i<=20;i++) {
  for (int j = 1; j <= 14; j++) {
    if (index[14 * i + j - 14] == 0) {
      for (int k = 0; k < 8; k++) {
        if (14 * i + j - 14 + 3*position[k] > 0 &&
            14 * i + j - 14 + 3*position[k] <= 352) {
          if (enable[14 * i + j - 14 + position[k]] == true) {
            if (index[14 * i + j - 14 + position[k]] > -2 &&index[14 * i + j - 14 + 2 * position[k]] < 0 &&index[14 * i + j - 14 + 3 * position[k]] < 0) {index[14 * i + j - 14 + position[k]] = -2;}
            if (index[14 * i + j - 14 + position[k]] > -3 &&index[14 * i + j - 14 + 2 * position[k]] == 0 &&index[14 * i + j - 14 + 3 * position[k]] < 0) {index[14 * i + j - 14 + position[k]] = -3;}
            if (index[14 * i + j - 14 + position[k]] > -4 &&index[14 * i + j - 14 + 2 * position[k]] == 0 &&index[14 * i + j - 14 + 3 * position[k]] == 0) {index[14 * i + j - 14 + position[k]] = -4;}

          }
          else if (enable[14 * i + j - 14 + position[k]] == false &&index[14 * i + j - 14 + position[k]] == 0 &&enable[14 * i + j - 14 + 2 * position[k]] == true) {
            if (index[14 * i + j - 14 + 2 * position[k]] > -3 &&index[14 * i + j - 14 + 3 * position[k]] < 0) {
              index[14 * i + j - 14 + 2 * position[k]] = -3;
            }
            if (index[14 * i + j - 14 + 2 * position[k]] > -4 &&index[14 * i + j - 14 + 3 * position[k]] == 0) {
              index[14 * i + j - 14 + 2 * position[k]] = -4;
            }

          }
          else if (enable[14 * i + j - 14 + position[k]] == false &&index[14 * i + j - 14 + position[k]] == 0 &&enable[14 * i + j - 14 + 2 * position[k]] == false &&index[14 * i + j - 14 + 2 * position[k]] == 0 &&enable[14 * i + j - 14 + 3 * position[k]] == true) {
            if (index[14 * i + j - 14 + 3 * position[k]] > -4)
              index[14 * i + j - 14 + 3 * position[k]] = -4;
          }

        }
      }
    }
  }
}

for(int i=1;i<=20;i++) {
  for (int j = 1; j <= 14; j++) {
    if (index[14 * i + j - 14] == 0) {
      for (int k = 0; k < 8; k++) {
        if (14 * i + j - 14 + 2*position[k] > 0 &&
            14 * i + j - 14 + 2*position[k] <= 352) {
          if (enable[14 * i + j - 14 + position[k]] == true) {
            if (index[14 * i + j - 14 + position[k]] > -2 &&index[14 * i + j - 14 + 2 * position[k]] < 0) {index[14 * i + j - 14 + position[k]] = -2;}
            if (index[14 * i + j - 14 + position[k]] > -3 &&index[14 * i + j - 14 + 2 * position[k]] == 0) {index[14 * i + j - 14 + position[k]] = -3;}


          }
          else if (enable[14 * i + j - 14 + position[k]] == false &&index[14 * i + j - 14 + position[k]] == 0 &&enable[14 * i + j - 14 + 2 * position[k]] == true) {
            if (index[14 * i + j - 14 + 2 * position[k]] > -3) {
              index[14 * i + j - 14 + 2 * position[k]] = -3;
            }


          }


        }
      }
    }
  }
}
for(int i=1;i<=20;i++) {
  for (int j = 1; j <= 14; j++) {
    if (index[14 * i + j - 14] == 0) {
      for (int k = 0; k < 8; k++) {
        if (14 * i + j - 14 + position[k] > 0 &&
            14 * i + j - 14 + position[k] <= 352) {
          if (enable[14 * i + j - 14 + position[k]] == true) {
            if (index[14 * i + j - 14 + position[k]] > -2) {index[14 * i + j - 14 + position[k]] = -2;}
          }
        }
      }
    }
  }
}
//
  for(int i=1;i<=2;i++)
  {
    for(int j=5;j<=10;j++)
    {
      if (index[14 * i + j - 14] == 0) {
        for (int k = 0; k < 8; k++) {
          if (14 * i + j - 14 + position[k] > 0 &&
              14 * i + j - 14 + position[k] <= 352) {
            if (enable[14 * i + j - 14 + position[k]] == true) {
              if (index[14 * i + j - 14 + position[k]] > -2 &&
                  index[14 * i + j - 14 + 2 * position[k]] < 0 &&
                  index[14 * i + j - 14 + 3 * position[k]] < 0 &&
                  index[14 * i + j - 14 + 4 * position[k]] < 0) {
                index[14 * i + j - 14 + position[k]] = -2;
              }
              if (index[14 * i + j - 14 + position[k]] > -3 &&
                  index[14 * i + j - 14 + 2 * position[k]] == 0 &&
                  index[14 * i + j - 14 + 3 * position[k]] < 0 &&
                  index[14 * i + j - 14 + 4 * position[k]] < 0) {
                index[14 * i + j - 14 + position[k]] = -3;
              }
              if (index[14 * i + j - 14 + position[k]] > -4 &&
                  index[14 * i + j - 14 + 2 * position[k]] == 0 &&
                  index[14 * i + j - 14 + 3 * position[k]] == 0 &&
                  index[14 * i + j - 14 + 4 * position[k]] < 0) {
                index[14 * i + j - 14 + position[k]] = -4;
              }
              if (index[14 * i + j - 14 + position[k]] > -5 &&
                  index[14 * i + j - 14 + 2 * position[k]] == 0 &&
                  index[14 * i + j - 14 + 3 * position[k]] == 0 &&
                  index[14 * i + j - 14 + 4 * position[k]] == 0) {
                index[14 * i + j - 14 + position[k]] = -5;
              }
            }
            else if (enable[14 * i + j - 14 + position[k]] == false &&
                index[14 * i + j - 14 + position[k]] == 0 &&
                enable[14 * i + j - 14 + 2 * position[k]] == true) {
              if (index[14 * i + j - 14 + 2 * position[k]] > -3 &&
                  index[14 * i + j - 14 + 3 * position[k]] < 0 &&
                  index[14 * i + j - 14 + 4 * position[k]] < 0) {
                index[14 * i + j - 14 + 2 * position[k]] = -3;
              }
              if (index[14 * i + j - 14 + 2 * position[k]] > -4 &&
                  index[14 * i + j - 14 + 3 * position[k]] == 0 &&
                  index[14 * i + j - 14 + 4 * position[k]] < 0) {
                index[14 * i + j - 14 + 2 * position[k]] = -4;
              }
              if (index[14 * i + j - 14 + 2 * position[k]] > -5 &&
                  index[14 * i + j - 14 + 3 * position[k]] == 0 &&
                  index[14 * i + j - 14 + 4 * position[k]] == 0) {
                index[14 * i + j - 14 + 2 * position[k]] = -5;
              }
            }
            else if (enable[14 * i + j - 14 + position[k]] == false &&
                index[14 * i + j - 14 + position[k]] == 0 &&
                enable[14 * i + j - 14 + 2 * position[k]] == false &&
                index[14 * i + j - 14 + 2 * position[k]] == 0 &&
                enable[14 * i + j - 14 + 3 * position[k]] == true) {
              if (index[14 * i + j - 14 + 3 * position[k]] > -4)
                index[14 * i + j - 14 + 3 * position[k]] = -4;
            }
            else if (enable[14 * i + j - 14 + position[k]] == false &&
                index[14 * i + j - 14 + position[k]] == 0 &&
                enable[14 * i + j - 14 + 2 * position[k]] == false &&
                index[14 * i + j - 14 + 2 * position[k]] == 0 &&
                enable[14 * i + j - 14 + 3 * position[k]] == false &&
                index[14 * i + j - 14 + 3 * position[k]] == 0 &&
                enable[14 * i + j - 14 + 4 * position[k]] == true) {
              if (index[14 * i + j - 14 + 4 * position[k]] > -5)
                index[14 * i + j - 14 + 4 * position[k]] = -5;
            }
          }
        }
      }
    }
  }
  for(int i=1;i<=2;i++) {
    for (int j = 4; j <= 11; j++) {
      if (index[14 * i + j - 14] == 0) {
        for (int k = 0; k < 8; k++) {
          if (14 * i + j - 14 + position[k] > 0 &&
              14 * i + j - 14 + position[k] <= 352) {
            if (enable[14 * i + j - 14 + position[k]] == true) {
              if (index[14 * i + j - 14 + position[k]] > -2 &&index[14 * i + j - 14 + 2 * position[k]] < 0 &&index[14 * i + j - 14 + 3 * position[k]] < 0) {index[14 * i + j - 14 + position[k]] = -2;}
              if (index[14 * i + j - 14 + position[k]] > -3 &&index[14 * i + j - 14 + 2 * position[k]] == 0 &&index[14 * i + j - 14 + 3 * position[k]] < 0) {index[14 * i + j - 14 + position[k]] = -3;}
              if (index[14 * i + j - 14 + position[k]] > -4 &&index[14 * i + j - 14 + 2 * position[k]] == 0 &&index[14 * i + j - 14 + 3 * position[k]] == 0) {index[14 * i + j - 14 + position[k]] = -4;}

            }
            else if (enable[14 * i + j - 14 + position[k]] == false &&index[14 * i + j - 14 + position[k]] == 0 &&enable[14 * i + j - 14 + 2 * position[k]] == true) {
              if (index[14 * i + j - 14 + 2 * position[k]] > -3 &&index[14 * i + j - 14 + 3 * position[k]] < 0) {
                index[14 * i + j - 14 + 2 * position[k]] = -3;
              }
              if (index[14 * i + j - 14 + 2 * position[k]] > -4 &&index[14 * i + j - 14 + 3 * position[k]] == 0) {
                index[14 * i + j - 14 + 2 * position[k]] = -4;
              }

            }
            else if (enable[14 * i + j - 14 + position[k]] == false &&index[14 * i + j - 14 + position[k]] == 0 &&enable[14 * i + j - 14 + 2 * position[k]] == false &&index[14 * i + j - 14 + 2 * position[k]] == 0 &&enable[14 * i + j - 14 + 3 * position[k]] == true) {
              if (index[14 * i + j - 14 + 3 * position[k]] > -4)
                index[14 * i + j - 14 + 3 * position[k]] = -4;
            }

          }
        }
      }
    }
  }

  for(int i=1;i<=2;i++) {
    for (int j = 3; j <= 12; j++) {
      if (index[14 * i + j - 14] == 0) {
        for (int k = 0; k < 8; k++) {
          if (14 * i + j - 14 +position[k] > 0 &&
              14 * i + j - 14 +position[k] <= 352) {
            if (enable[14 * i + j - 14 + position[k]] == true) {
              if (index[14 * i + j - 14 + position[k]] > -2 &&index[14 * i + j - 14 + 2 * position[k]] < 0) {index[14 * i + j - 14 + position[k]] = -2;}
              if (index[14 * i + j - 14 + position[k]] > -3 &&index[14 * i + j - 14 + 2 * position[k]] == 0) {index[14 * i + j - 14 + position[k]] = -3;}


            }
            else if (enable[14 * i + j - 14 + position[k]] == false &&index[14 * i + j - 14 + position[k]] == 0 &&enable[14 * i + j - 14 + 2 * position[k]] == true) {
              if (index[14 * i + j - 14 + 2 * position[k]] > -3) {
                index[14 * i + j - 14 + 2 * position[k]] = -3;
              }


            }


          }
        }
      }
    }
  }
  for(int i=1;i<=2;i++) {
    for (int j = 2; j <= 13; j++) {
      if (index[14 * i + j - 14] == 0) {
        for (int k = 0; k < 8; k++) {
          if (14 * i + j - 14 + position[k] > 0 &&
              14 * i + j - 14 + position[k] <= 352) {
            if (enable[14 * i + j - 14 + position[k]] == true) {
              if (index[14 * i + j - 14 + position[k]] > -2) {index[14 * i + j - 14 + position[k]] = -2;}
            }
          }
        }
      }
    }
  }
  //
  for(int i=19;i<=20;i++)
  {
    for(int j=5;j<=10;j++)
    {
      if (index[14 * i + j - 14] == 0) {
        for (int k = 0; k < 8; k++) {
          if (14 * i + j - 14 + position[k] > 0 &&
              14 * i + j - 14 + position[k] <= 352) {
            if (enable[14 * i + j - 14 + position[k]] == true) {
              if (index[14 * i + j - 14 + position[k]] > -2 &&
                  index[14 * i + j - 14 + 2 * position[k]] < 0 &&
                  index[14 * i + j - 14 + 3 * position[k]] < 0 &&
                  index[14 * i + j - 14 + 4 * position[k]] < 0) {
                index[14 * i + j - 14 + position[k]] = -2;
              }
              if (index[14 * i + j - 14 + position[k]] > -3 &&
                  index[14 * i + j - 14 + 2 * position[k]] == 0 &&
                  index[14 * i + j - 14 + 3 * position[k]] < 0 &&
                  index[14 * i + j - 14 + 4 * position[k]] < 0) {
                index[14 * i + j - 14 + position[k]] = -3;
              }
              if (index[14 * i + j - 14 + position[k]] > -4 &&
                  index[14 * i + j - 14 + 2 * position[k]] == 0 &&
                  index[14 * i + j - 14 + 3 * position[k]] == 0 &&
                  index[14 * i + j - 14 + 4 * position[k]] < 0) {
                index[14 * i + j - 14 + position[k]] = -4;
              }
              if (index[14 * i + j - 14 + position[k]] > -5 &&
                  index[14 * i + j - 14 + 2 * position[k]] == 0 &&
                  index[14 * i + j - 14 + 3 * position[k]] == 0 &&
                  index[14 * i + j - 14 + 4 * position[k]] == 0) {
                index[14 * i + j - 14 + position[k]] = -5;
              }
            }
            else if (enable[14 * i + j - 14 + position[k]] == false &&
                index[14 * i + j - 14 + position[k]] == 0 &&
                enable[14 * i + j - 14 + 2 * position[k]] == true) {
              if (index[14 * i + j - 14 + 2 * position[k]] > -3 &&
                  index[14 * i + j - 14 + 3 * position[k]] < 0 &&
                  index[14 * i + j - 14 + 4 * position[k]] < 0) {
                index[14 * i + j - 14 + 2 * position[k]] = -3;
              }
              if (index[14 * i + j - 14 + 2 * position[k]] > -4 &&
                  index[14 * i + j - 14 + 3 * position[k]] == 0 &&
                  index[14 * i + j - 14 + 4 * position[k]] < 0) {
                index[14 * i + j - 14 + 2 * position[k]] = -4;
              }
              if (index[14 * i + j - 14 + 2 * position[k]] > -5 &&
                  index[14 * i + j - 14 + 3 * position[k]] == 0 &&
                  index[14 * i + j - 14 + 4 * position[k]] == 0) {
                index[14 * i + j - 14 + 2 * position[k]] = -5;
              }
            }
            else if (enable[14 * i + j - 14 + position[k]] == false &&
                index[14 * i + j - 14 + position[k]] == 0 &&
                enable[14 * i + j - 14 + 2 * position[k]] == false &&
                index[14 * i + j - 14 + 2 * position[k]] == 0 &&
                enable[14 * i + j - 14 + 3 * position[k]] == true) {
              if (index[14 * i + j - 14 + 3 * position[k]] > -4)
                index[14 * i + j - 14 + 3 * position[k]] = -4;
            }
            else if (enable[14 * i + j - 14 + position[k]] == false &&
                index[14 * i + j - 14 + position[k]] == 0 &&
                enable[14 * i + j - 14 + 2 * position[k]] == false &&
                index[14 * i + j - 14 + 2 * position[k]] == 0 &&
                enable[14 * i + j - 14 + 3 * position[k]] == false &&
                index[14 * i + j - 14 + 3 * position[k]] == 0 &&
                enable[14 * i + j - 14 + 4 * position[k]] == true) {
              if (index[14 * i + j - 14 + 4 * position[k]] > -5)
                index[14 * i + j - 14 + 4 * position[k]] = -5;
            }
          }
        }
      }
    }
  }
  for(int i=19;i<=20;i++) {
    for (int j = 4; j <= 11; j++) {
      if (index[14 * i + j - 14] == 0) {
        for (int k = 0; k < 8; k++) {
          if (14 * i + j - 14 + position[k] > 0 &&
              14 * i + j - 14 + position[k] <= 352) {
            if (enable[14 * i + j - 14 + position[k]] == true) {
              if (index[14 * i + j - 14 + position[k]] > -2 &&index[14 * i + j - 14 + 2 * position[k]] < 0 &&index[14 * i + j - 14 + 3 * position[k]] < 0) {index[14 * i + j - 14 + position[k]] = -2;}
              if (index[14 * i + j - 14 + position[k]] > -3 &&index[14 * i + j - 14 + 2 * position[k]] == 0 &&index[14 * i + j - 14 + 3 * position[k]] < 0) {index[14 * i + j - 14 + position[k]] = -3;}
              if (index[14 * i + j - 14 + position[k]] > -4 &&index[14 * i + j - 14 + 2 * position[k]] == 0 &&index[14 * i + j - 14 + 3 * position[k]] == 0) {index[14 * i + j - 14 + position[k]] = -4;}

            }
            else if (enable[14 * i + j - 14 + position[k]] == false &&index[14 * i + j - 14 + position[k]] == 0 &&enable[14 * i + j - 14 + 2 * position[k]] == true) {
              if (index[14 * i + j - 14 + 2 * position[k]] > -3 &&index[14 * i + j - 14 + 3 * position[k]] < 0) {
                index[14 * i + j - 14 + 2 * position[k]] = -3;
              }
              if (index[14 * i + j - 14 + 2 * position[k]] > -4 &&index[14 * i + j - 14 + 3 * position[k]] == 0) {
                index[14 * i + j - 14 + 2 * position[k]] = -4;
              }

            }
            else if (enable[14 * i + j - 14 + position[k]] == false &&index[14 * i + j - 14 + position[k]] == 0 &&enable[14 * i + j - 14 + 2 * position[k]] == false &&index[14 * i + j - 14 + 2 * position[k]] == 0 &&enable[14 * i + j - 14 + 3 * position[k]] == true) {
              if (index[14 * i + j - 14 + 3 * position[k]] > -4)
                index[14 * i + j - 14 + 3 * position[k]] = -4;
            }

          }
        }
      }
    }
  }

  for(int i=19;i<=20;i++) {
    for (int j = 3; j <= 12; j++) {
      if (index[14 * i + j - 14] == 0) {
        for (int k = 0; k < 8; k++) {
          if (14 * i + j - 14 +position[k] > 0 &&
              14 * i + j - 14 +position[k] <= 352) {
            if (enable[14 * i + j - 14 + position[k]] == true) {
              if (index[14 * i + j - 14 + position[k]] > -2 &&index[14 * i + j - 14 + 2 * position[k]] < 0) {index[14 * i + j - 14 + position[k]] = -2;}
              if (index[14 * i + j - 14 + position[k]] > -3 &&index[14 * i + j - 14 + 2 * position[k]] == 0) {index[14 * i + j - 14 + position[k]] = -3;}


            }
            else if (enable[14 * i + j - 14 + position[k]] == false &&index[14 * i + j - 14 + position[k]] == 0 &&enable[14 * i + j - 14 + 2 * position[k]] == true) {
              if (index[14 * i + j - 14 + 2 * position[k]] > -3) {
                index[14 * i + j - 14 + 2 * position[k]] = -3;
              }


            }


          }
        }
      }
    }
  }
  for(int i=19;i<=20;i++) {
    for (int j = 2; j <= 13; j++) {
      if (index[14 * i + j - 14] == 0) {
        for (int k = 0; k < 8; k++) {
          if (14 * i + j - 14 + position[k] > 0 &&
              14 * i + j - 14 + position[k] <= 352) {
            if (enable[14 * i + j - 14 + position[k]] == true) {
              if (index[14 * i + j - 14 + position[k]] > -2) {index[14 * i + j - 14 + position[k]] = -2;}
            }
          }
        }
      }
    }
  }*/
  print(index);
}
void countbotindex()
{ var checkprior=0;
var min=-1;
for(int i=1;i<=20;i++)
{
  for (int j = 1; j <= 14; j++)
  {
    if(index[14 * i + j - 14]<min&&index[14 * i + j - 14]>=-5)
    {
      min=index[14 * i + j - 14];
    }
  }
}
if(min==-2)checkprior=1;
if(min==-3)checkprior=2;
if(min==-4)checkprior=3;
if(min==-5)checkprior=4;

  for(int i=1;i<=20;i++) {
    for (int j = 1; j <= 14; j++) {
      if (index[14 * i + j - 14] == 1) {
        for (int k = 0; k < 8; k++) {
          if (14 * i + j - 14 + 4*position[k] > 0 &&
              14 * i + j - 14 + 4*position[k] <= 352) {
            if (enable[14 * i + j - 14 + position[k]] == true) {
              if (index[14 * i + j - 14 + position[k]] > -6 &&index[14 * i + j - 14 + 2 * position[k]] < 0 &&index[14 * i + j - 14 + 3 * position[k]] < 0 &&index[14 * i + j - 14 + 4 * position[k]] < 0 &&checkprior <= 1) {
                index[14 * i + j - 14 + position[k]] = -6;
              }
              if (index[14 * i + j - 14 + position[k]] > -7 &&index[14 * i + j - 14 + 2 * position[k]] == 1 &&index[14 * i + j - 14 + 3 * position[k]] < 0 &&index[14 * i + j - 14 + 4 * position[k]] < 0 &&checkprior <= 2) {
                index[14 * i + j - 14 + position[k]] = -7;
              }
              if (index[14 * i + j - 14 + position[k]] > -8 &&index[14 * i + j - 14 + 2 * position[k]] == 1 &&index[14 * i + j - 14 + 3 * position[k]] == 1 &&index[14 * i + j - 14 + 4 * position[k]] < 0 &&checkprior <= 3) {
                index[14 * i + j - 14 + position[k]] = -8;
              }
              if (index[14 * i + j - 14 + position[k]] > -9 &&index[14 * i + j - 14 + 2 * position[k]] == 1 &&index[14 * i + j - 14 + 3 * position[k]] == 1 &&index[14 * i + j - 14 + 4 * position[k]] == 1) {
                index[14 * i + j - 14 + position[k]] = -9;
              }
            }

            else if (enable[14 * i + j - 14 + position[k]] == false &&
                index[14 * i + j - 14 + position[k]] == 1 &&
                enable[14 * i + j - 14 + 2 * position[k]] == true) {
              if (index[14 * i + j - 14 + 2 * position[k]] > -7 &&
                  index[14 * i + j - 14 + 3 * position[k]] < 0 &&
                  index[14 * i + j - 14 + 4 * position[k]] < 0 &&
                  checkprior <= 2) {
                index[14 * i + j - 14 + 2 * position[k]] = -7;
              }
              if (index[14 * i + j - 14 + 2 * position[k]] > -8 &&
                  index[14 * i + j - 14 + 3 * position[k]] == 1 &&
                  index[14 * i + j - 14 + 4 * position[k]] < 0 &&
                  checkprior <= 3) {
                index[14 * i + j - 14 + 2 * position[k]] = -8;
              }
              if (index[14 * i + j - 14 + 2 * position[k]] > -9 &&
                  index[14 * i + j - 14 + 3 * position[k]] == 1 &&
                  index[14 * i + j - 14 + 4 * position[k]] == 1) {
                index[14 * i + j - 14 + 2 * position[k]] = -9;
              }
            }
            else if (enable[14 * i + j - 14 + position[k]] == false &&index[14 * i + j - 14 + position[k]] == 1 &&enable[14 * i + j - 14 + 2 * position[k]] == false &&index[14 * i + j - 14 + 2 * position[k]] == 1 &&enable[14 * i + j - 14 + 3 * position[k]] == true) {
              if (index[14 * i + j - 14 + 3 * position[k]] > -8 &&
                  checkprior <= 3)
                index[14 * i + j - 14 + 3 * position[k]] = -8;
            }
            else if (enable[14 * i + j - 14 + position[k]] == false &&
                index[14 * i + j - 14 + position[k]] == 1 &&
                enable[14 * i + j - 14 + 2 * position[k]] == false &&
                index[14 * i + j - 14 + 2 * position[k]] == 1 &&
                enable[14 * i + j - 14 + 3 * position[k]] == false &&
                index[14 * i + j - 14 + 3 * position[k]] == 1 &&
                enable[14 * i + j - 14 + 4 * position[k]] == true) {
              if (index[14 * i + j - 14 + 4 * position[k]] > -9)
                index[14 * i + j - 14 + 4 * position[k]] = -9;
            }
          }
        }
      }
    }
  }
/*for(int i=1;i<=20;i++) {
  for (int j = 1; j <= 14; j++) {
    if (index[14 * i + j - 14] == 1) {
      for (int k = 0; k < 8; k++) {
        if (14 * i + j - 14 + 3*position[k] > 0 &&
            14 * i + j - 14 + 3*position[k] <= 352) {
          if (enable[14 * i + j - 14 + position[k]] == true) {
            if (index[14 * i + j - 14 + position[k]] > -6 &&index[14 * i + j - 14 + 2 * position[k]] < 0 &&index[14 * i + j - 14 + 3 * position[k]] < 0&&checkprior <= 1) {
              index[14 * i + j - 14 + position[k]] = -6;
            }
            if (index[14 * i + j - 14 + position[k]] > -7 &&index[14 * i + j - 14 + 2 * position[k]] == 1 &&index[14 * i + j - 14 + 3 * position[k]] < 0 &&checkprior <= 2) {
              index[14 * i + j - 14 + position[k]] = -7;
            }
            if (index[14 * i + j - 14 + position[k]] > -8 &&index[14 * i + j - 14 + 2 * position[k]] == 1 &&index[14 * i + j - 14 + 3 * position[k]] == 1 &&checkprior <= 3) {
              index[14 * i + j - 14 + position[k]] = -8;
            }
          }

          else if (enable[14 * i + j - 14 + position[k]] == false &&index[14 * i + j - 14 + position[k]] == 1 &&enable[14 * i + j - 14 + 2 * position[k]] == true) {
            if (index[14 * i + j - 14 + 2 * position[k]] > -7 &&index[14 * i + j - 14 + 3 * position[k]] < 0&&checkprior <= 2) {
              index[14 * i + j - 14 + 2 * position[k]] = -7;
            }
            if (index[14 * i + j - 14 + 2 * position[k]] > -8 &&index[14 * i + j - 14 + 3 * position[k]] == 1&& checkprior <= 3) {
              index[14 * i + j - 14 + 2 * position[k]] = -8;
            }

          }
          else if (enable[14 * i + j - 14 + position[k]] == false &&index[14 * i + j - 14 + position[k]] == 1 &&enable[14 * i + j - 14 + 2 * position[k]] == false &&index[14 * i + j - 14 + 2 * position[k]] == 1 &&enable[14 * i + j - 14 + 3 * position[k]] == true) {
            if (index[14 * i + j - 14 + 3 * position[k]] > -8 &&checkprior <= 3)
              index[14 * i + j - 14 + 3 * position[k]] = -8;
          }

        }
      }
    }
  }
}
for(int i=1;i<=20;i++) {
  for (int j = 1; j <= 14; j++) {
    if (index[14 * i + j - 14] == 1) {
      for (int k = 0; k < 8; k++) {
        if (14 * i + j - 14 + 2*position[k] > 0 &&
            14 * i + j - 14 + 2*position[k] <= 352) {
          if (enable[14 * i + j - 14 + position[k]] == true) {
            if (index[14 * i + j - 14 + position[k]] > -6 &&index[14 * i + j - 14 + 2 * position[k]] < 0&&checkprior <= 1) {
              index[14 * i + j - 14 + position[k]] = -6;
            }
            if (index[14 * i + j - 14 + position[k]] > -7 &&index[14 * i + j - 14 + 2 * position[k]] == 1&&checkprior <= 2) {
              index[14 * i + j - 14 + position[k]] = -7;
            }

          }

          else if (enable[14 * i + j - 14 + position[k]] == false &&index[14 * i + j - 14 + position[k]] == 1 &&enable[14 * i + j - 14 + 2 * position[k]] == true) {
            if (index[14 * i + j - 14 + 2 * position[k]] > -7&&checkprior <= 2) {
              index[14 * i + j - 14 + 2 * position[k]] = -7;
            }
            }
          }
      }
    }
  }
}
for(int i=1;i<=20;i++) {
  for (int j = 1; j <= 14; j++) {
    if (index[14 * i + j - 14] == 1) {
      for (int k = 0; k < 8; k++) {
        if (14 * i + j - 14 + position[k] > 0 &&
            14 * i + j - 14 + position[k] <= 352) {
          if (enable[14 * i + j - 14 + position[k]] == true) {
            if (index[14 * i + j - 14 + position[k]] > -6&&checkprior <= 1) {
              index[14 * i + j - 14 + position[k]] = -6;
            }


          }

        }
      }
    }
  }
}*/

}
void bot()
{var min=index[1];
  for(int i=1;i<=20;i++)
  {
    for (int j = 1; j <= 14; j++)
    {
        if(index[14 * i + j - 14]<min)
          {
            min=index[14 * i + j - 14];
          }
    }
  }
  for(int i=1;i<=352;i++)
    {
      if(index[i]==min)
        {
          text[i]="o";
          index[i]=1;
          frontcolor[i]=Colors.blue;
          visi[i]=true;
          enable[i]=false;
          break;
        }
    }
  print(min);
}
class _MyAppState extends State<MyApp23> {
Color backcolor=Colors.white;





  @override
  Widget build(BuildContext context) {
    value();

    return Stack(
        children:<Widget>[ MaterialApp(
            home: Scaffold(appBar: AppBar(title:Text('New App')),
                body:  SafeArea(
                        child:Scrollbar(
                            child:Center(
                                child: Column( mainAxisAlignment: MainAxisAlignment.start,
                                    children:[
                                      for(int i=1;i<=20;i++)
                                      Row(
                                      children:[
                                        for(int j=1;j<=14;j++)
                                         Flexible(flex: 1,
                                           child:SizedBox(child:
                                           ElevatedButton(

                                             onPressed:enable[14*i+j-14]?(){

                                               setState(() {
                                                 enable[14*i+j-14]=false;

                                                   {  text[14*i+j-14]="x";
                                                      index[14*i+j-14]=0;
                                                      frontcolor[14*i+j-14]=Colors.red;
                                                      }
                                                   print(i);
                                                   print(j);
                                                 countindex();
                                                 countbotindex();
                                                 bot();

                                                 visi[14*i+j-14]=true;
                                                 checkwin();
                                                 if(result==1)
                                                   {
                                                   showDialog(
                                                   context: context,
                                                   builder: (BuildContext context) {
                                                   return SimpleDialog(
                                                     title: Text(a),
                                                      children:[ Row(
                                                         children: [
                                                           SimpleDialogOption(
                                                             onPressed: (){
                                                               setState(() {
                                                                 for(int i=0;i<352;i++)
                                                                 {
                                                                   visi[i]=false;
                                                                   enable[i]=true;
                                                                   index[i]=-1;
                                                                   result=0;

                                                                 }

                                                               });
                                                               Navigator.pop(context);
                                                             },
                                                             child: Text('chơi lại'),
                                                           ),

                                                         ],
                                                       )]
                                                   );
                                                   }
                                                   );
                                                   }
                                               });

                                           }:null,
                                               style:ButtonStyle(
                                                   backgroundColor:MaterialStateProperty.all<Color>(backcolor),
                                                   foregroundColor:MaterialStateProperty.all<Color>(frontcolor[14*i+j-14]),
                                                 shape:MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(side:BorderSide())),

                                               ),
                                               child:Visibility(
                                                   child:Text(text[14*i+j-14],textAlign:TextAlign.center,),
                                                   visible:visi[14*i+j-14],
                                               ),

                                           ),
                                           width:30,
                                             height:30,
                                           ),

                                         )
                                      ]

                                      ),

                                    ]
                                )
                            )
                        )
                    )
                )
            )

        ]

    );
  }


}