package com.oke.egov;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.ContextLoaderListener;
import org.springframework.web.context.support.XmlWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

import javax.servlet.FilterRegistration;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

@Slf4j
public class EgovWebApplicationInitializer implements WebApplicationInitializer {

    @Override
    public void onStartup(ServletContext servletContext) throws ServletException {

        FilterRegistration.Dynamic characterEncoding = servletContext.addFilter("encodingFilter", new org.springframework.web.filter.CharacterEncodingFilter());
        characterEncoding.setInitParameter("encoding", "UTF-8");
        characterEncoding.setInitParameter("forceEncoding", "true");
        characterEncoding.addMappingForUrlPatterns(null, false, "*.do");


        XmlWebApplicationContext rootContext = new XmlWebApplicationContext();
        rootContext.setConfigLocations(new String[] { "classpath*:egovframework/spring/com/context-*.xml","classpath*:egovframework/spring/com/*/context-*.xml" });
        rootContext.refresh();
        rootContext.start();

        servletContext.addListener(new ContextLoaderListener(rootContext));

        XmlWebApplicationContext xmlWebApplicationContext = new XmlWebApplicationContext();
        xmlWebApplicationContext.setConfigLocation("/WEB-INF/config/egovframework/springmvc/egov-com-*.xml");
        ServletRegistration.Dynamic dispatcher = servletContext.addServlet("dispatcher", new DispatcherServlet(xmlWebApplicationContext));
        dispatcher.addMapping("/");
        dispatcher.setLoadOnStartup(1);

        servletContext.addListener(new org.springframework.web.context.request.RequestContextListener());
    }
}
