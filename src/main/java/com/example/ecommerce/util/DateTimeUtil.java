package com.example.ecommerce.util;

import java.time.Instant;
import java.time.LocalDate;
import java.time.ZoneId;
import java.time.temporal.ChronoUnit;
import java.time.temporal.TemporalAdjusters;
import java.time.temporal.TemporalUnit;

public class DateTimeUtil {

  public static Instant firstDateOfLastMonth() {
    Instant currentInstant = Instant.now();
    LocalDate currentDate = currentInstant.atZone(ZoneId.of("UTC")).toLocalDate();
    LocalDate firstDayOfLastMonth = currentDate.minusMonths(1).with(TemporalAdjusters.firstDayOfMonth());
    return firstDayOfLastMonth.atStartOfDay(ZoneId.of("UTC")).toInstant();

  }

  public static Instant lastDateOfLastMonth() {
    Instant currentInstant = Instant.now();

    LocalDate currentDate = currentInstant.atZone(ZoneId.of("UTC")).toLocalDate();

    LocalDate lastDayOfLastMonth = currentDate.minusMonths(1).with(TemporalAdjusters.lastDayOfMonth());
    Instant lastDayInstant = lastDayOfLastMonth.atStartOfDay(ZoneId.of("UTC")).toInstant();
    lastDayInstant = lastDayInstant.plus(23, ChronoUnit.HOURS);
    lastDayInstant = lastDayInstant.plus(59, ChronoUnit.MINUTES);
    lastDayInstant = lastDayInstant.plus(59, ChronoUnit.SECONDS);
    return lastDayInstant;
  }
}
