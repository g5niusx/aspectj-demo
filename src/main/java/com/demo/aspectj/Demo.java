package com.demo.aspectj;

public class Demo {

    public static void main(String[] args) {
        Demo demo = new Demo();
        demo.log();
        demo.noAnnotationLog();
    }

    @Log(name = "test")
    String log() {
        foo("有自定义注解的方法");
        System.out.println(bar("有自定义注解的方法"));
        return "Mock.....";
    }


    void noAnnotationLog() {
        foo("没有自定义注解的方法");
        System.out.println(bar("没有自定义注解的方法"));
    }

    void foo(String message) {
        System.out.println("foo:" + message);
    }

    String bar(String message) {
        System.out.println("bar: " + message + ")");
        return "bar: " + message;
    }
}
