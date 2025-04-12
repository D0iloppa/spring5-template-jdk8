package com.d0iloppa.spring5.template.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

import com.d0iloppa.spring5.template.filter.wrapper.XSSRequestWrapper;

@WebFilter("/*")
public class XSSFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        // 초기화 로직 필요 시 작성
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {

        HttpServletRequest req = (HttpServletRequest) request;
        chain.doFilter(new XSSRequestWrapper(req), response);
    }

    @Override
    public void destroy() {
        // 자원 정리 필요 시 작성
    }
}
