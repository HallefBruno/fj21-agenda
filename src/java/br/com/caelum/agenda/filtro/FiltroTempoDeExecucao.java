package br.com.caelum.agenda.filtro;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

@WebFilter("/*")
public class FiltroTempoDeExecucao implements Filter {
    FilterConfig filterConfig;
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        this.filterConfig = filterConfig;
        
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        
        ServletContext servletContext = filterConfig.getServletContext();
        servletContext.log(request.getRemoteHost());
        servletContext.log(request.getServletContext().getContextPath());
        
        long tempoInicial = System.currentTimeMillis();
        chain.doFilter(request, response);
        long tempoFinal = System.currentTimeMillis();
        String uri = ((HttpServletRequest) request).getRequestURI();
        String parametros = ((HttpServletRequest) request).getParameter("logica");
        System.out.println("Tempo da requisicao de "+uri+"?logica="+parametros+" demorou (ms): "+ (tempoFinal - tempoInicial));
    }

    @Override
    public void destroy() {
        
    }

}
