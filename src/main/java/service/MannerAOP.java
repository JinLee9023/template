package service;

import java.util.Arrays;


import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.Signature;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import DTO.EMP;


@Component
@Aspect
public class MannerAOP {

  @Before("execution(* list())")
  public void confirmName() {
   System.out.println("before 정상적으로 동작 했습니다.");
  }
  
  @After("execution(* list())")
  public void confirmAfter(){
   System.out.println("After 정상적으로 동작 했습니다.");
  }
  
  @AfterThrowing(pointcut = "execution(* *(*))", throwing = "e")// 대상 객체의 메서드를 실행하는 도중 예외(throwing)가 발생한 경우에 공통 기능을 실행
  public void myAfterThrowing(JoinPoint joinPoint, Throwable e) throws Exception {
	   
    System.out.println("사원 수정 오류");

    	Signature signature = joinPoint.getSignature();
        String methodName = signature.getName();
        String stuff = signature.toString();
        String arguments = Arrays.toString(joinPoint.getArgs());
        System.out.println("Write something in the log... We have caught exception in method: "
                + methodName + " with arguments "
                + arguments + "\nand the full toString: " + stuff + "\nthe exception is: "
                + e.getMessage());
  }
 
}
