package com.javarush.game.servlets;

import com.javarush.game.engine.User;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.Spy;
import org.mockito.exceptions.base.MockitoException;
import org.mockito.junit.jupiter.MockitoExtension;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.net.http.HttpRequest;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.when;
@ExtendWith(MockitoExtension.class)
class CheckEquipmentTest extends HttpServlet{

    @Mock
    User user;
    @Mock
    HttpSession session;
    @Mock
    HttpServletRequest request;

    @Mock
    HttpServletResponse response;
    @Spy
    private CheckEquipment checkEquipment;

    @Test
    void doGetTest() {

        when(request.getSession()).thenReturn(session);
        when(session.getAttribute("user")).thenReturn(user);
    }
}