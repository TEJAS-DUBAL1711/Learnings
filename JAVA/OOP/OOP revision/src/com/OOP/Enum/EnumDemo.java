package com.OOP.Enum;

import java.util.Arrays;

enum Status {
    Running,Failed,Success,Pending;

}

class Demo{
    public static void main(String[] args) {
        Status s=Status.Running;
        System.out.println(s);
        Status st=Status.Failed;
        System.out.println(st);
        Status[] status=Status.values();
        System.out.println(status[0]);
        System.out.println(s.ordinal());
        System.out.println(Arrays.toString(status));
        for(int i=0;i< status.length;i++) System.out.println(status[i] + " " + status[i].ordinal());

    }
}