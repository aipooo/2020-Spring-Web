package com.group.bean;
public class Add{
     private int numA;
     private int numB;     
     public int getNumA(){
        return numA;
     }
     public int getNumB(){
        return numB;
     }
     public void setNumA(int val){
        numA = val;
     }
     public void setNumB(int val){
        numB = val;
     }
     public int getSum(){
        return numA+numB;
     }
}
