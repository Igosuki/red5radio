package com.radioc.xml.adapters;

import java.sql.Time;
import java.text.SimpleDateFormat;

import javax.xml.bind.annotation.adapters.XmlAdapter;

public class TimeAdapter extends XmlAdapter<String, Time> {

    private SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    @Override
    public String marshal(Time v) throws Exception {
        return dateFormat.format(v);
    }

    @Override
    public Time unmarshal(String v) throws Exception {
        return Time.valueOf(v);
    }

}