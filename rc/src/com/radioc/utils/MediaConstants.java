package com.radioc.utils;

import javax.persistence.Entity;

public final class MediaConstants
{
  public static final String ISO_8859_1 = "ISO-8859-1";

  public static enum Block
  {
    YES("yes"), NO("no");

    String word;

    private Block(String word) { this.word = word;
    }
  }

  @Entity(name="mediatype")
  public static enum MediaType
  {
    MP3("mp3", "audio/mpeg"), M4A("m4a", "audio/x-m4a"), MP4("mp4", "video/mp4"), 
    M4V("m4v", "video/x-m4v"), MOV("mov", "video/quicktime"), PDF("pdf", "application/pdf"), 
    EPUB("epub", "document/x-epub"), FLV("flv", "application/flv");

    String term;
    String type;

    private MediaType(String term, String type) { this.term = term;
      this.type = type; }

    public static boolean isType(MediaType m, String term)
    {
      return (term != null) && (m.term.equals(term));
    }

    public String toString()
    {
      return this.term;
    }
    public String getTerm() {
      return this.term;
    }
    public String getType() {
      return this.type;
    }
  }
}