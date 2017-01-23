package tn.iit.util;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public final class DateUtil {

	private DateUtil() {
		super();
	}

	public static String dateToString(Date date) {
		DateFormat df =null;
		 df = new SimpleDateFormat("dd-MM-yyyy");
		Date today = Calendar.getInstance().getTime();
		String reportDate = df.format(today);
		return reportDate;

	}

	public static Date stringToDate(String dateStr) {
		
		SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");

		Date date = null;
		try {
			date = (Date)formatter.parse(dateStr);
			System.out.println(date);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return date;

	}

}
