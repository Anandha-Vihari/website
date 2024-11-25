1A) Write a program to print prime numbers up to a given number.

import java.util.Scanner;
class Test {
void check(int num) {
System.out.println ("Prime numbers up to "+num+" are:");
for (int i=1;i<=num;i++)
for (int j=2;j<i;j++) {
if(i%j==0)
break;
else if((i%j!=0)&&(j==i-1))
System.out.print(“ “+i);
}
}
} //end of class Test

class Prime {
public static void main(String args[ ]) {
Test obj1=new Test();
Scanner input=new Scanner(System.in);
System.out.println("Enter the value of n:");
int n=input.nextInt();
obj1.check(n);
}
}

 
 
B) Write a program to print roots of a quadratic equation ax2+bx+c=0.
import java.io.*;
import java.util.*;
class quad{
public static void main(String args[]){
Scanner s=new Scanner(System.in);
System.out.println("enter the values for a,b & c");
int a=s.nextInt();
int b=s.nextInt();
int c=s.nextInt();
		
double d,e;
		
d=((b*b)-(4*a*c));
if(d==0){
System.out.println("expression has real&equal roots");
e=(-b)/(2*a);
System.out.print("roots are:"+e+"\t"+e);
}
if(d>0){
System.out.println("expression has real&unreal roots");
					
e=(-b+Math.sqrt(d))/(2*a);
			
System.out.print("roots are:"+e+"\t");
e=(-b-Math.sqrt(d))/(2*a);
System.out.println(e);
}
if(d<0){
System.out.println("expression has imaginary rotts");
}
}
}
 
C) Write a program to print Fibonacci sequence up to a given number.

import java.util.Scanner;

class Fib {
public static void main(String args[ ]) {
Scanner input=new Scanner(System.in);
int i,a=0,b=1,c=0,t;
System.out.println("Enter value of t:");
t=input.nextInt();
System.out.print(a);
System.out.print(" "+b);
for(i=0;i<t-2;i++) {
c=a+b;
a=b;
b=c;
System.out.print(" "+c);
}

System.out.println();
System.out.print(t+"th value of the series is: "+c);
}
}

 


 
2A) Define a class to represent a bank account and include the following members
Instance Variables:
i)	Name of depositor
ii)	Account no
iii)	Type of account
iv)	Balance amount in the account
Instance Methods:
i)	To assign instance variables (Customer-Zero argument and parameterized)
ii)	To deposit an amount
iii)	To withdraw amount after checking the balance
iv)	To display name and address
Define ExecuteAccount class in which define main method to test above class. 

2A) Define a class to represent a bank account and include the following members
Instance Variables:
i) Name of depositor
ii) Account no
iii) Type of account
iv) Balance amount in the account
Instance Methods:
i) To assign instance variables (Constructors-Zero argument and parameterized)
ii) To deposit an amount
iii) To withdraw amount after checking the balance
iv) To display name and address
Define ExecuteAccount class in which define main method to test above class.
import java.util.*;
class BankAccount
{
String name,type;
int acctno;
double balance;
double wbalance;
Scanner s = new Scanner(System.in);
public BankAccount()
{
name="abc";
type="saving";
acctno=1234567890;
balance=10000.00;
}
public BankAccount(String n,String t,int an,double bl)
{
name=n;
type=t;
acctno=an;
balance=bl;
}
void deposit()
{
double dat;
System.out.println("Enter the amount to deposit: ");
dat=s.nextDouble();
if(dat>0)
{
balance+=dat;
}
else
System.out.println("Enter the valid Amount");
}
void withdraw()
{
System.out.println("Enter the amount to withdraw : ");
wbalance=s.nextDouble();
if(wbalance>0)
{
balance-=wbalance;
}
else
System.out.println("Enter the valid Amount");
}
void display()
{
System.out.println("Account Holder Name: "+name);
System.out.println("Account Number: "+acctno);
System.out.println("Account Number: "+type);
System.out.println("Account Balance: "+balance);
System.out.println();
}
}
class ExecuteAccountA
{
public static void main(String args[])
{
BankAccount ba1=new BankAccount();
BankAccount ba2=new BankAccount("Sreenivas","Saving",1234567891,20000);
System.out.println("1st Account holder Details : \n");
ba1.display();
ba1.deposit();
ba1.withdraw();
ba1.display();
System.out.println("2nd Account holder Details : \n");
ba2.display();
ba2.deposit();
ba2.withdraw();
ba2.display();
}
}
Output:


 

B) In the above account class, maintain the total number of account holders present in the bank and also define a method to display it. Change the main method appropriately.

import java.util.*;
class BankAccount
{
String name,type;
int acctno;
double balance;
double wbalance;
static int count=0;
Scanner s = new Scanner(System.in);
public BankAccount()
{
name="abc";
type="saving";
acctno=1234567890;
balance=10000.00;
count++;
}
public BankAccount(String n,String t,int an,double bl)
{
name=n;
type=t;
acctno=an;
balance=bl;
count++;
}
void deposit()
{
double dat;
System.out.println("Enter the amount to deposit: ");
dat=s.nextDouble();
if(dat>0)
{
balance+=dat;
}
else
System.out.println("Enter the valid Amount");
}
void withdraw()
{
System.out.println("Enter the amount to withdraw : ");
wbalance=s.nextDouble();
if(wbalance>0)
{
balance-=wbalance;
}
else
System.out.println("Enter the valid Amount");
}
void display()
{
System.out.println("Account Holder Name: "+name);
System.out.println("Account Number: "+acctno);
System.out.println("Account Number: "+type);
System.out.println("Account Balance: "+balance);
System.out.println();
}
static void totalAccounts()
{
System.out.println("Total No.of Accounts :"+count);
}
}
class ExecuteAccountB
{
public static void main(String args[])
{
BankAccount ba1=new BankAccount();
BankAccount ba2=new BankAccount("Sreenivas","Saving",1234567891,20000);
BankAccount ba3=new BankAccount("Sreenu","Saving",1234567892,30000);
BankAccount ba4=new BankAccount();
BankAccount ba5=new BankAccount("Srinu","Saving",1234567893,15000);
BankAccount.totalAccounts();
}
}
Output:

 

C) In main method of ExecuteAccount class, define an array to handle five accounts.

import java.util.*;
class BankAccount
{
String name,type;
int acctno;
double balance;
double wbalance;
static int count=0;
Scanner s = new Scanner(System.in);
public BankAccount()
{
name="abc";
type="saving";
acctno=1234567890;
balance=10000.00;
count++;
}
public BankAccount(String n,String t,int an,double bl)
{
name=n;
type=t;
acctno=an;
balance=bl;
count++;
}
void deposit()
{
double dat;
System.out.println("Enter the amount to deposit: ");
dat=s.nextDouble();
if(dat>0)
{
balance+=dat;
}
else
System.out.println("Enter the valid Amount");
}
void withdraw()
{
System.out.println("Enter the amount to withdraw : ");
wbalance=s.nextDouble();
if(wbalance>0)
{
balance-=wbalance;
}
else
System.out.println("Enter the valid Amount");
}
void display()
{
System.out.println("Account Holder Name: "+name);
System.out.println("Account Number: "+acctno);
System.out.println("Account Number: "+type);
System.out.println("Account Balance: "+balance);
System.out.println();
}
static void totalAccounts()
{
System.out.println("Total No.of Accounts :"+count);
}
}
class ExecuteAccountC
{
public static void main(String args[])
{
BankAccount[] ba=new BankAccount[5];
ba[0]=new BankAccount("Sreenivas","Saving",1234567891,20000);
ba[1]=new BankAccount("Sreenu","Saving",1234567892,30000);
ba[2]=new BankAccount();
ba[3]=new BankAccount("Srinu","Saving",1234567893,15000);
ba[4]=new BankAccount();
System.out.println("Five Accounts Details: ");
for(int i=0;i<ba.length;i++)
ba[i].display();
}
}
Output:
 

D) In Account class constructor, demonstrate the use of “this” keyword.
import java.util.*;
class BankAccount
{
String name,type;
int acctno;
double balance;
double wbalance;
static int count=0;
Scanner s = new Scanner(System.in);
public BankAccount()
{
name="abc";
type="saving";
acctno=1234567890;
balance=10000.00;
count++;
}
public BankAccount(String name,String type,int acctno,double balance)
{
this.name=name;
this.type=type;
this.acctno=acctno;
this.balance=balance;
count++;
}
void deposit()
{
double dat;
System.out.println("Enter the amount to deposit: ");
dat=s.nextDouble();
if(dat>0)
{
balance+=dat;
}
else
System.out.println("Enter the valid Amount");
}
void withdraw()
{
System.out.println("Enter the amount to withdraw : ");
wbalance=s.nextDouble();
if(wbalance>0)
{
balance-=wbalance;
}
else
System.out.println("Enter the valid Amount");
}
void display()
{
System.out.println("Account Holder Name: "+name);
System.out.println("Account Number: "+acctno);
System.out.println("Account Number: "+type);
System.out.println("Account Balance: "+balance);
System.out.println();
}
static void totalAccounts()
{
System.out.println("Total No.of Accounts :"+count);
}
}
class ExecuteAccountD
{
public static void main(String args[])
{
BankAccount ba1=new BankAccount();
BankAccount ba2=new BankAccount("Sreenivas","Saving",1234567891,20000);
ba1.display();
ba2.display();
}
}
Output:
 

E) Modify the constructor to read data from keyboard.
import java.util.*;
class BankAccount
{
String name,type;
int acctno;
double balance;
double wbalance;
static int count=0;
Scanner s = new Scanner(System.in);
public BankAccount()
{
System.out.println("Enter the Name: ");
name=s.nextLine();
System.out.println("Enter the type of Account: ");
type=s.nextLine();
System.out.println("Enter the Account Number: ");
acctno=s.nextInt();
System.out.println("Enter the Balance: ");
balance=s.nextDouble();
count++;
}
void deposit()
{
double dat;
System.out.println("Enter the amount to deposit: ");
dat=s.nextDouble();
if(dat>0)
{
balance+=dat;
}
else
System.out.println("Enter the valid Amount");
}
void withdraw()
{
System.out.println("Enter the amount to withdraw : ");
wbalance=s.nextDouble();
if(wbalance>0)
{
balance-=wbalance;
}
else
System.out.println("Enter the valid Amount");
}
void display()
{
System.out.println("Account Holder Name: "+name);
System.out.println("Account Number: "+acctno);
System.out.println("Account Number: "+type);
System.out.println("Account Balance: "+balance);
System.out.println();
}
static void totalAccounts()
{
System.out.println("Total No.of Accounts :"+count);
}
}
class ExecuteAccountE
{
public static void main(String args[])
{
BankAccount ba1=new BankAccount();
ba1.display();
}
}
Output:
 

F) Overload the method deposit () method (one with argument and another without argument)

import java.util.*;
class BankAccount
{
String name,type;
int acctno;
double balance;
double wbalance;
static int count=0;
Scanner s = new Scanner(System.in);
public BankAccount()
{
System.out.println("Enter the Name: ");
name=s.nextLine();
System.out.println("Enter the type of Account: ");
type=s.nextLine();
System.out.println("Enter the Account Number: ");
acctno=s.nextInt();
System.out.println("Enter the Balance: ");
balance=s.nextDouble();
count++;
}
void deposit()
{
double dat;
System.out.println("Enter the amount to deposit: ");
dat=s.nextDouble();
if(dat>0)
{
balance+=dat;
}
else
System.out.println("Enter the valid Amount");
}
void deposit(double d)
{
if(d>0)
{
balance+=d;
}
else
System.out.println("Enter the valid Amount");
}
void withdraw()
{
System.out.println("Enter the amount to withdraw : ");
wbalance=s.nextDouble();
if(wbalance>0)
{
balance-=wbalance;
}
else
System.out.println("Enter the valid Amount");
}
void display()
{
System.out.println("Account Holder Name: "+name);
System.out.println("Account Number: "+acctno);
System.out.println("Account Number: "+type);
System.out.println("Account Balance: "+balance);
System.out.println();
}
static void totalAccounts()
{
System.out.println("Total No.of Accounts :"+count);
}
}
class ExecuteAccountF
{
public static void main(String args[])
{
BankAccount ba1=new BankAccount();
System.out.println("Account Details :");
ba1.display();
ba1.deposit();
System.out.println("Account Details after deposit :");
ba1.display();
ba1.deposit(3500);
System.out.println("Account Details after deposit :");
ba1.display();
}
}
Output:
 

G) In Account class, define set and get methods for each instance variables.
Example: 
For account number variable, define the methods.
getAccountNo() and setAccountNo(int accno)
In each and every method of Account class, reading data from and writing data to instance variables should be done through these variables.

import java.util.Scanner;
class BankAccount{

                String AcctName,Type;
                long AcctNo;
                double balance;
		Scanner s=new Scanner(System.in);

                void getAcctNo(){
                        System.out.println("Acct Number is :"+AcctNo);
                }

                void setAcctNo(int acctno){
                        AcctNo=acctno;        
                }

                void getAcctBalance(){
                        System.out.println("Acct balance is :"+balance);
                }

                void setAcctBalance(double bal){
                        balance=bal;        
                }
		void setName(String s){
		AcctName=s;
		}
		void getName(){
		System.out.println("AcctName is:"+AcctName);

		}
		void setType(String type){
			Type=type;
		}
		void getType(){
		System.out.println("Account type is: "+Type);
		}
                public BankAccount(String Name,String T,long AccNo,double bal){

                        AcctName=Name;
			Type=T;
			balance=bal;
			AcctNo=AccNo;
			                        
                }

                void deposit(){
                        getAcctBalance();
                }

                void withdraw(){
				double wbal;
				System.out.print("Enter with draw amount:");
				wbal=s.nextLong();
				System.out.println("with draw amount is:"+wbal);
				balance=balance-wbal;
			System.out.println("balance after with drawing: "+balance);
                }

                void display(){
			getAcctNo();
			getType();
			getName();
		
                }
}
class ExecuteAccountG{
        public static void main(String args[]){

                BankAccount ba=new BankAccount("abc","saving",1234,20000.00);
                                
		ba.display();
		ba.getAcctBalance();
		ba.withdraw();
 		ba.deposit();
		
        }
}

 


 
3. A) Define Resister class in which we define the following members:
Instance variables:
resistance
Instance Methods:
giveData():To assign data to the resistance variable
displayData(): To display data in the resistance variable
constructors
Define subclasses for the Resistor class called SeriesCircuit and ParallelCircuit in which define methods : calculateSeriesResistance( ) and calculateParallelResistance() respectively.Both the methods should take two Resistor objects as arguments and return Resistor object as result.ln main method , define another class called ResistorExecute to test the above class.

import java.util.Scanner;
class Resistor
{
 float resistance;
 void giveData()
 {
  Scanner sc=new Scanner(System.in);
  System.out.println("enter value of resistance");
  resistance=sc.nextFloat();
  }
  void displayData()
  {
    System.out.println("resultant value of series is :"+resistance);
   }
 }
class SeriesCircuit extends Resistor
{
 Resistor calculateSeriesResistance(Resistor r1,Resistor r2)
 {
  Resistor r3=new Resistor();
  r3.resistance=r1.resistance+r2.resistance;
  return r3;
 }
}
class ParallelCircuit extends Resistor
{
 Resistor calculateParallelResistance(Resistor r1,Resistor r2)
 {
  Resistor r4=new Resistor();
  r4.resistance=(r1.resistance*r2.resistance)/(r1.resistance+r2.resistance);
  return r4;
 }
}
class ResistorExecute
{
 public static void main(String args[])
 {
  Resistor r3,r4;
  Resistor r1=new Resistor();
  r1.giveData();
  Resistor r2=new Resistor();
  r2.giveData();
  SeriesCircuit sc=new SeriesCircuit();
  r3=sc.calculateSeriesResistance(r1,r2);
  r3.displayData();
  ParallelCircuit PA=new ParallelCircuit();
  r4=PA.calculateParallelResistance(r1,r2);
  r4.displayData();
 }
}
Output:
 

B) Modify the above two methods which should accept array of Resistor objects as argument and return Resistor object as result.

import java.util.Scanner;
class Resistor
{
 float resistance;
 void giveData()
 {
  Scanner sc=new Scanner(System.in);
  System.out.println("enter value of resistance");
  resistance=sc.nextFloat();
  }
  void displayData()
  {
    System.out.println("resultant value of series is :"+resistance);
   }
 }
class SeriesCircuit extends Resistor
{
 Resistor calculateSeriesResistance(Resistor[] r)
 {
  Resistor r3=new Resistor();
  r3.resistance=r[0].resistance+r[1].resistance;
  return r3;
 }
}
class ParallelCircuit extends Resistor
{
 Resistor calculateParallelResistance(Resistor[] r)
 {
  Resistor r4=new Resistor();
  r4.resistance=(r[0].resistance*r[1].resistance)/(r[0].resistance+r[1].resistance);
  return r4;
 }
}
class ResistorExecuteA
{
 public static void main(String args[])
 {
  Resistor r3,r4;
  Resistor[] r=new Resistor[2];
  r[0]=new Resistor();
  r[1]=new Resistor();
  for(int i=0;i<2;i++)
  r[i].giveData();
  SeriesCircuit sc=new SeriesCircuit();
  r3=sc.calculateSeriesResistance(r);
  r3.displayData();
  ParallelCircuit PA=new ParallelCircuit();
  r4=PA.calculateParallelResistance(r);
  r4.displayData();
 }
}
Output:
 
4. A) Write a program to demonstrate method overriding.

class Simple
{
	void method()
	{
		System.out.println("method in Simple");
	}
}
class SimpleA extends Simple
{
	void method()
	{
		System.out.println("method in SimpleA");
	}
}
class TestOverRiding
{
	public static void main(String[] args)
	{
		Simple s1=new Simple();
		s1.method();
		SimpleA s2=new SimpleA();
		s2.method();
		Simple s3=new SimpleA();
		s3.method();
	}
}

Output:
 




 
B) Write a program to demonstrate the uses of "super" keyword (three uses)

//Call Base Class Constructor using super
class SuperClass 
{	
	public SuperClass(String str) 
	{		
		System.out.println("Base Class Constructor " + str);
	}
}
class SubClass extends SuperClass
{
	public SubClass(String str) 
	{
		super(str);
		System.out.println("Sub Class Constructor " + str);
	}
}
class MainClass1
{	
	public static void main(String args[]) 
	{		
		SubClass obj = new SubClass("called");
	}
}

Output:
 


//Call Base Class Method using super
class SuperClass
{	
	void display() 
	{
		System.out.println("Base Class method called");
	}
}
class SubClass extends SuperClass
{

	void display() 
	{
		super.display();
		System.out.println("Sub Class method called");
	}
}
class MainClass2 
{
	public static void main(String args[]) 
	{		
		SubClass obj = new SubClass();
		obj.display();
	}
}

Output:
 

//Access Base Class Variables using super
class SuperClass 
{
	int a = 10;
}
 
class SubClass extends SuperClass
{	
	int a = 20;
	void display()
	{		
		System.out.println("The value is : " + super.a);
	}
}
 
class MainClass3 
{	
	public static void main(String args[]) 
	{
		SubClass obj = new SubClass();
		obj.display();
	}
}

Output:
 


C) Write a program to demonstrate dynamic method dispatch (i.e. Dynamic polymorphism).

//Dynamic Method Dispatch
class A
{
	void callme()
	{
		System.out.println("Inside A's callme method");
	}
}
class B extends A
{
	void callme()
	{
		System.out.println("Inside B's callme method");
	}
}
class C extends B
{
	void callme()
	{
		System.out.println("Inside C's callme method");
	}
}
class Dispatch
{
	public static void main(String args[])
	{
		A a=new A();
		B b=new B();
		C c=new C();
	
		A r;
		
		 r=a;
		 r.callme();
		
		 r=b;
		 r.callme();
		
		 r=c;
		 r.callme();
	}
}

Output:
 



 
5) A) Write a program to check whether the given string is palindrome or not.

import java.util.Scanner;
class Palindrome
{
	public static void main(String[] args)
	{
		String str;
		Scanner in = new Scanner(System.in);
		System.out.println("Enter the String : ");
		str=in.nextLine();
		StringBuffer sb=new StringBuffer(str);
		String rstr=sb.reverse().toString();
		if(str.equals(rstr))
			System.out.println("The given String is Palindrome");
		else
			System.out.println("The given String is not Palindrome");
	}
}

Output:
 


B)	Write a program for sorting a given list of names in ascending order.

import java.util.Scanner;
class StringSort
{
	public static void main(String args[])
	{
		String names[]=new String[5];
		Scanner in = new Scanner(System.in);
		System.out.println("Enter the Names: ");
		for (int i = 0; i < 5; i++)
		{            
			names[i]=in.nextLine();
		}
		int size=names.length;
		System.out.println(size);
		System.out.println("Before Sorting : ");
		for(int i=0;i<size;i++)
		{
			System.out.println(names[i]);
		}
		for(int i=0;i<size;i++)
		{
			for(int j=i+1;j<size;j++)
			{
				if(names[i].compareTo(names[j])>0)
				{
					String temp=names[i];
					names[i]=names[j];
					names[j]=temp;
				}
			}
		}
		System.out.println("After Sorting : ");
		for(int i=0;i<size;i++)
		{
			System.out.println(names[i]);
		}
	}
}


Output:

 


C)	Write a program to count the no. of words in a given text.
import java.io.*;
import java.util.*;
class Count
{
	public static void main(String args[ ])throws IOException
	{
		long nl=0,nw=0,nc=0;
		String line;
		BufferedReader br=new BufferedReader(new FileReader(args[0]));
		while ((line=br.readLine())!=null)
		{
			nl++;
			nc=nc+line.length();
			StringTokenizer st = new StringTokenizer(line);
			nw += st.countTokens();
		}
		System.out.println("Number of Characters: "+nc);
		System.out.println("Number of Words: "+nw);
		System.out.println("Number of Lines: "+nl);
	}
}

Output:

 











 
6. A) Define an interface "GeomtricShape" with methods area( ) and perimeter()(Bothmethod's return type and parameter list should be void and empty respectively). Define classes like Triangle, Rectangle and Circle implementing the"GeometricShape" interface and also define "ExecuteMain" class in which include main method to test the above classes.

import java.util.Scanner;
interface GeometricShape
{
        void area();
        void perimeter();
}
class Triangle implements GeometricShape
{
        double a=1,b=2,c=1,h=4;
        public void area()
		{
                System.out.println("");
                double area1=0.5*b*h;
                System.out.println("Area of a Triangle: "+area1);
        }
        public void perimeter()
		{
                double per=a+b+c;
                System.out.println("Perimeter of a Triangle: "+per);
                System.out.println("");
        }
}
class Rectangle implements GeometricShape
{
        int length=15,width=10,per,area1;
        public void area()
		{
                area1=length*width;
                System.out.println("Area of Rectangle: "+area1);
        }
        public void perimeter()
		{
                per=2*length+2*width;
                System.out.println("Perimeter of Rectangle: "+per);
                System.out.println("");
        }
}
class Circle implements GeometricShape
{
        int r=10;
        double p=3.141,area1=0.0,per=0.0;
        public void area()
		{
                area1=p*r*r;
                System.out.println("Area of Circle: "+area1);
        }
        public void perimeter()
		{
                per=2*p*r;
                System.out.println("Perimeter of Circle: "+per);
                System.out.println("");
        }
} 
class ExecuteMain
{
        public static void main(String args[])
		{
                Triangle t=new Triangle();
                t.area();
                t.perimeter();
                Circle c=new Circle();
                c.area();
                c.perimeter();
                Rectangle r=new Rectangle();
                r.area();
                r.perimeter();
        }
}

Output:
 


 
B) Define a package with name “sortapp” in which declare an interface “SortInterface” with method sort () whose return type and parameter type should be void and empty. Define “subsortapp” as sub package of “sortapp” package in which define class “SortImpl” implementing “SortInterface” in which sort() method should print a message Linear sort is used.
Define a package “searchingapp” in which declare an interface “SearchInterface” with search () method whose return type and parameter list should be void and empty respectively.
Define “serachingimpl” package in which define a “SearchImpl” class implementing “SearchInterface” defined in “searchingapp” package in which define a search() method which should print a message linear search is used.
Define a class ExecutePackage with main method using the above packages (classes and it’s methods).

//program1
package sortapp;
public interface SortInterface
{
        void sort();
}

//program2
package sortapp.subsortapp;
import sortapp.*;

public class SortImpl implements SortInterface
{
        public void sort()
		{
                System.out.println("Sort Interface.......");
        }
}

//program3
package searchingapp;
public interface SearchInterface
{
        void search();
}

//program4

package searchingimpl;
import searchingapp.*;
public class SearchImpl implements SearchInterface
{
        public void search()
		{
                System.out.println("Search Interface.......");
        }
}

//program5

import sortapp.SortInterface;
import sortapp.subsortapp.SortImpl;
import searchingapp.SearchInterface;
import searchingimpl.SearchImpl;
class ExecutePackageB
{
        public static void main(String args[])
		{
                SortImpl sort1=new SortImpl();
		SearchImpl search1=new SearchImpl();
		sort1.sort();
		search1.search();
        }
}

Output:
