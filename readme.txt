ch11-interceptor2:多个拦截器同时使用时的拦截顺序

第一个拦截器preHandler=true，第二个拦截器preHandler=true
    11111-拦截器MyInterceptor的preHandler方法执行了
    22222-拦截器MyInterceptor的preHandler方法执行了
    MyController的doSome方法执行了
    22222-拦截器MyInterceptor的postHandler方法执行了
    11111-拦截器MyInterceptor的postHandler方法执行了
    22222-拦截器MyInterceptor的afterCompletion方法执行了
    11111-拦截器MyInterceptor的afterCompletion方法执行了

第一个拦截器preHandler=true，第二个拦截器preHandler=false
    11111-拦截器MyInterceptor的preHandler方法执行了
    22222-拦截器MyInterceptor的preHandler方法执行了
    11111-拦截器MyInterceptor的afterCompletion方法执行了

第一个拦截器preHandler=false，第二个拦截器preHandler=true|false
    11111-拦截器MyInterceptor的preHandler方法执行了


=================================================================================
拦截器和过滤器的区别
    1.过滤器是servlet中的对象，拦截器是框架中的对象
    2.过滤器实现filter接口的对象，拦截器是实现HandlerInterceptor
    3.过滤器是用来设置request，response的参数，属性的，侧重对数据过滤的。
      拦截器是用来验证请求的,能截断请求。
    4.过滤器是在拦截器之前先执行的。
    5.过滤器是tomcat服务器创建的对象
      拦截器是springmvc容器中创建的对象
    6.过滤器是一个执行时间点。
      拦截器有三个执行时间点
    7.过滤器可以处理jsp, js, html等等
      拦截器是侧重拦截对controller的对象。
        如果你的请求不能被dispatcherServlet接收，这个请求不会执行拦截器内容
