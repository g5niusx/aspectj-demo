package com.demo.aspectj;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.reflect.CodeSignature;

aspect GetInfo {

    static final void println(String s) {
        System.out.println(s);
    }


    pointcut logPointcut(): @annotation(Log);

    Object around(): logPointcut()  {
        String name = thisJoinPoint.getSignature().getName();
        println("当前拦截到方法:" + name);
        Object result = proceed();
        println("运行结果为: " + result);
        return result;
    }
}
