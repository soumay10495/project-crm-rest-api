package project.aspect;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

import java.util.logging.Logger;

@Aspect
@Component
public class CRMLoggingAspect {
    private Logger logger = Logger.getLogger(getClass().getName());

    @Pointcut("execution(* project.controller.*.*(..))")
    private void controller() {
    }

    @Pointcut("execution(* project.dao.*.*(..))")
    private void dao() {
    }

    @Pointcut("execution(* project.service.*.*(..))")
    private void service() {
    }

    @Pointcut("controller() || dao() || service()")
    private void appFlow() {
    }

    @Before("appFlow()")
    public void before(JoinPoint joinPoint) {
        logger.info("@Before advice for method: " + joinPoint.getSignature().toShortString());

        Object args[] = joinPoint.getArgs();

        for (Object arg : args) {
            logger.info("Argument : " + arg);
        }
    }

    @AfterReturning(
            pointcut = "appFlow()",
            returning = "returnObject"
    )
    public void afterReturn(JoinPoint joinPoint, Object returnObject) {
        String method = joinPoint.getSignature().toShortString();
        logger.info("@AfterReturning for method : " + method);
        logger.info("Returned Object : " + returnObject);
    }
}
