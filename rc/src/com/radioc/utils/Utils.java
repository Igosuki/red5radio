package com.radioc.utils;

import java.text.SimpleDateFormat;
import java.util.Calendar;

import org.apache.commons.lang.StringUtils;
import org.displaytag.properties.SortOrderEnum;

/**
 * 
 */
public class Utils {

	public static String formatDate(long d) {
		Calendar calendar = Calendar.getInstance();
		calendar.setTimeInMillis(d);
		SimpleDateFormat date = new SimpleDateFormat(
				"EEE, d MMM yyyy HH:mm:ss Z");
		return date.format(calendar.getTime());
	}

	public static String formatBytes(long d) {
		String out = d + "";
		if (d < 1024) {
			out = d + " Bytes";
		} else if (d > 1024) {
			out = (d / 1024) + " KB";
		} else if (d > 104858) {
			out = (d / 1000000) + " MB";
		}
		return out;
	}
}