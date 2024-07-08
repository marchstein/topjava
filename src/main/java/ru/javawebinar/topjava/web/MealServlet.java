package ru.javawebinar.topjava.web;

import org.slf4j.Logger;
import ru.javawebinar.topjava.model.Meal;
import ru.javawebinar.topjava.model.MealTo;
import ru.javawebinar.topjava.util.MealsUtil;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.time.LocalDateTime;
import java.time.Month;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import static org.slf4j.LoggerFactory.*;

public class MealServlet extends HttpServlet {
    private static final int CALORIES_PER_DAY = 2000;
    private static final Logger log = getLogger(MealServlet.class);

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setAttribute("meals", MealsUtil.MEAL_LIST);

        request.getRequestDispatcher("/meals.jsp").forward(request, response);
        log.debug("redirect to meals");
//        response.sendRedirect("meals.jsp");
    }
}
