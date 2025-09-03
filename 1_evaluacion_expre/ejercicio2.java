//Ejercicio #2 Evaluación de expresiones en Java
//Instrucciones: Analice las siguientes expresiones, anote las reducciones y compruebe 
// el resultado en el lenguaje. Si una expresión esta mal redactada, favor de repararla. 
// Es permitido crear variables extra.
//Puede utilizar esta herramienta Java Online Compiler



public class Example(){
    public static void main(string[] args){
        //Nota: todas las expresiones comienzan con los siguientes valores:
int x=10;
int b=10;
//favor de reiniciar los valores de x y Y al verificar cada expresión

//Expresión #1
int x=10;
System.out.println(x++);
//sale 10

//Expresión #2
int x=10;
System.out.println(++x);
//sale 11

//Expresión #3
//b++ * -3 == -3 % x++
int x=10;
int b=10;
int j=b++ * 3; //lado a
int k=-3 % x++; //lado b
boolean res= (j==k); //comparacion
System.out.println(res);

//Expresión #4
//30 - 10 /= % ++b + 30 % 7 * 2
int x=10;
int b=10;
double j= 30 - 10;
j/= ++b + (30 % 14);
System.out.println(j);
//sale 1.5384615384615385

//Expresión #5
//x =  -50 * x++ * 80 % b / 4 *=8
int x=10;
int b=10;
int j=-50 * x++;
int y=j * 80;
int res= y % b / 4;
int res2=res*=8;
System.out.println(res2);
//sale 0

//Expresión #6
//b*= x++ - 8 + 3 - 5 / 4 % - 3 + 8
int x =10;
int b=10;
int j= x++ - 8 + 3 - 5 / 4 % - 3 + 8;
b*=j;
System.out.println(b);
//sale 120


//Expresión #7
//x = b * = 50 / 30 * ++x + 80
int x=10;
int b=10;
int k= x = b;
int y= k *= 50 / 30 * ++x + 80;
System.out.println(y);
//da 910

//Expresión #8
++x % 20.2 == -x /= b % = --x

//Expresión #9
1 *= b++ * b-- / 3 % ++b *= 10 + 1;

//Expresión #10
-10 * -0 *= -10 *=x++ + x+=x*x ;

//Expresión #11
a * b == b++ + b-- + --b + x++ + x--;
    }
}
