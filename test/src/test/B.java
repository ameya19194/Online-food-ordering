package test;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;

public class B {

	public static void main(String[] args) {
	/*	String[] s={"100","200","300","100","100","50","200"};
		for(String x:s)
		{
			System.out.println(x);
		}
		for(int i=0;i<s.length;i++)
		{
			if(Integer.parseInt(s[i])>20){
				s[i]="20";
			}
		}
		System.out.println("After logic");
		for(String x:s)
		{
			System.out.println(x);
		}*/
		List<String> qty=new ArrayList<>();
		qty.add("10");
		qty.add("20");
		qty.add("30");
		qty.add("25");
		qty.add("10");
		qty.add("25");
		qty.add("35");
		qty.add("5");
		qty.add("35");
		qty.add("10");
		
		List<String> l=new ArrayList<>();
		l.add("Tea");
		l.add("Pepsi");
		l.add("Lassi");
		l.add("Coffee");
		l.add("Tea");
		l.add("Coffee");
		l.add("Green Tea");
		l.add("Lime Soda");
		l.add("Green Tea");
		l.add("Tea");
		
		//System.out.println(l);
		
		
		TreeSet<Integer> t=new TreeSet<>();
		for(int i=0; i<l.size();i++)
		{
			for(int j=i+1;j<l.size();j++)
			{
				if(l.get(i).equals(l.get(j)))
				{
					//t.add(i);
					t.add(j);
				}
			}
		}
		//System.out.println(t);
		/*int defaultsize=l.size();
		//System.out.println(defaultsize);
		int count=-1;
 	for(int a:t)
		{
 			count++;
			if(l.size()<defaultsize)
			{
				l.remove(a-count);
			}
			
			if (l.size()==defaultsize) {
			
				l.remove(a);
			}
 		
			
		}*/
 		
 	//	System.out.println(l);
		
		for(int i=0; i<l.size();i++)
		{
			for(int j=i+1;j<l.size();j++)
			{
				if(l.get(i).equals(l.get(j)))
				{
					int sum=Integer.parseInt(qty.get(i))+Integer.parseInt(qty.get(j));
					qty.set(i,String.valueOf(sum));
				}
			}
		}
		
		System.out.println(qty);
	}
	
	

}
