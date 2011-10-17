package com.radioc.xml.converters;

import com.radioc.hbeans.Emission;
import com.radioc.hbeans.Intervenant;
import com.radioc.hbeans.MediaItem;
import com.radioc.xml.beans.ObjectFactory;
import com.radioc.xml.beans.Rss;
import com.radioc.xml.beans.RssChannel;
import com.radioc.xml.beans.RssItem;
import java.sql.Time;
import java.util.Date;
import java.util.List;

public class ModelToRssConverter
{
  private static ObjectFactory objF = new ObjectFactory();

  public static RssItem mediaItemToRssItem(MediaItem mi) {
    RssItem item = objF.createRssItem();
    List fields = item.getTitleOrDescriptionOrLink();

    fields.add(objF.createRssItemTitle(mi.getTitle()));
    if (mi.getPubDate() != null) {
      fields.add(objF.createRssItemPubDate(mi.getPubDate().toString()));
    }
    fields.add(objF.createAuthor(mi.getAuthor()));
    fields.add(objF.createBlock(String.valueOf(mi.getBlocked())));
    if (mi.getDuration() != null) {
      fields.add(objF.createDuration(mi.getDuration().toString()));
    }
    fields.add(objF.createExplicit(String.valueOf(mi.getExplicit())));
    fields.add(objF.createIsClosedCaptioned(String.valueOf(mi.getIsClosedCaptioned())));
    if (mi.getEpisodeNumber() != null) {
      fields.add(objF.createOrder(String.valueOf(mi.getEpisodeNumber())));
    }
    fields.add(objF.createKeywords(mi.getKeywords()));
    fields.add(objF.createSubtitle(mi.getSubtitle()));
    fields.add(objF.createSummary(mi.getDescription()));

    return item;
  }

  public static RssChannel emissionToRssChannel(Emission em) {
    RssChannel channel = objF.createRssChannel();
    List item = channel.getItem();
    List fields = channel.getTitleOrLinkOrDescription();
    fields.add(objF.createRssChannelTitle(em.getTitle()));
    fields.add(objF.createRssChannelCopyright("&#x2117; &amp; &#xA9; 1900-2100 Radio &amp; co "));
    StringBuilder sb = new StringBuilder();
    for (Intervenant s : em.getIntervenants()) {
      sb.append(s.getName()).append(" ");
    }
    fields.add(objF.createAuthor(sb.toString()));
    fields.add(objF.createCategory(em.getCategory()));

    fields.add(objF.createRssChannelLanguage("fr-fr"));
    fields.add(objF.createComplete(String.valueOf(em.getComplete())));
    fields.add(objF.createKeywords(em.getKeywords()));

    fields.add(objF.createSubtitle(em.getSubtitle()));
    fields.add(objF.createSummary(em.getSummary()));

    for (MediaItem mi : em.getEpisodes()) {
      item.add(mediaItemToRssItem(mi));
    }
    return channel;
  }

  public static Rss getRss() {
    Rss rss = objF.createRss();
    return rss;
  }
}