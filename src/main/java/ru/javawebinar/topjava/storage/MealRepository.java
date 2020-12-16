package ru.javawebinar.topjava.storage;

import ru.javawebinar.topjava.model.Meal;

import java.util.Collection;

public interface MealRepository {

    Meal save(Meal meal);

    Collection<Meal> getAll();

    Meal get(int id);

    boolean delete(int id);
}
