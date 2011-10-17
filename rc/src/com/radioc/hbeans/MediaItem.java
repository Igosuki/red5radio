package com.radioc.hbeans;

import java.sql.Time;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.Valid;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter;

import org.hibernate.validator.constraints.NotBlank;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.NumberFormat;

import com.radioc.utils.MediaConstants;
import com.radioc.utils.MediaConstants.MediaType;
import com.radioc.xml.adapters.TimeAdapter;

@Entity
@Table(name="audio_media")
@XmlRootElement
@XmlAccessorType(XmlAccessType.FIELD)
public class MediaItem extends AbstractEntity
{
  private static final long serialVersionUID = 153485060441873698L;

  @NotBlank
  private String title;

  private String subtitle;

  @Column(name="private")
  private Boolean isPv;

  @NotBlank
  private String path;

  @Enumerated(EnumType.STRING)
  @NotNull
  private MediaConstants.MediaType type;

  @Size(max=255)
  private String description;

  @NotNull
  @ManyToOne(optional=false, fetch=FetchType.EAGER, cascade={javax.persistence.CascadeType.REFRESH, javax.persistence.CascadeType.MERGE, javax.persistence.CascadeType.DETACH})
  private Emission emission;

  @DateTimeFormat(iso=DateTimeFormat.ISO.NONE, pattern="dd/MM/yyyy hh:mm")
  @NotNull
  private Date pubDate = new Date();
  private String author;
  private String category;
  private String imgPath;
  @XmlElement(name = "duration", required = false) 
  @XmlJavaTypeAdapter(TimeAdapter.class)
  private Time duration;
  private Boolean explicit;
  private Boolean blocked;
  private Boolean isClosedCaptioned;

  @NumberFormat(style=NumberFormat.Style.NUMBER)
  private Integer episodeNumber;
  private String keywords;
  private String accesskey;

  public String getAccesskey()
  {
    return this.accesskey;
  }

  public void setAccesskey(String accesskey)
  {
    this.accesskey = accesskey;
  }

  public String getDescription()
  {
    return this.description;
  }

  public void setDescription(String description)
  {
    this.description = description;
  }

  public String getTitle()
  {
    return this.title;
  }

  public void setTitle(String title)
  {
    this.title = title;
  }

  public Boolean getIsPv()
  {
    return this.isPv;
  }

  public void setIsPv(Boolean isPv)
  {
    this.isPv = isPv;
  }

  public String getPath()
  {
    return this.path;
  }

  public void setPath(String path)
  {
    this.path = path;
  }

  public MediaType getType()
  {
    return this.type;
  }

  public void setType(MediaType type)
  {
    this.type = type;
  }

  public String getSubtitle()
  {
    return this.subtitle;
  }

  public void setSubtitle(String subtitle)
  {
    this.subtitle = subtitle;
  }

  public Emission getEmission()
  {
    return this.emission;
  }

  public void setEmission(Emission emission)
  {
    this.emission = emission;
  }

  public Date getPubDate()
  {
    return this.pubDate;
  }

  public void setPubDate(Date pubDate)
  {
    this.pubDate = pubDate;
  }

  public String getAuthor()
  {
    return this.author;
  }

  public void setAuthor(String author)
  {
    this.author = author;
  }

  public String getCategory()
  {
    return this.category;
  }

  public void setCategory(String category)
  {
    this.category = category;
  }

  public String getImgPath()
  {
    return this.imgPath;
  }

  public void setImgPath(String imgPath)
  {
    this.imgPath = imgPath;
  }

  public Time getDuration()
  {
    return this.duration;
  }

  public void setDuration(Time duration)
  {
    this.duration = duration;
  }

  public Boolean getExplicit()
  {
    return this.explicit;
  }

  public void setExplicit(Boolean explicit)
  {
    this.explicit = explicit;
  }

  public Boolean getBlocked()
  {
    return this.blocked;
  }

  public void setBlocked(Boolean blocked)
  {
    this.blocked = blocked;
  }

  public Boolean getIsClosedCaptioned()
  {
    return this.isClosedCaptioned;
  }

  public void setIsClosedCaptioned(Boolean isClosedCaptioned)
  {
    this.isClosedCaptioned = isClosedCaptioned;
  }

  public Integer getEpisodeNumber()
  {
    return this.episodeNumber;
  }

  public void setEpisodeNumber(Integer episodeNumber)
  {
    this.episodeNumber = episodeNumber;
  }

  public String getKeywords()
  {
    return this.keywords;
  }

  public void setKeywords(String keywords)
  {
    this.keywords = keywords;
  }

  public static MediaItem createEmpty()
  {
    MediaItem mediaItem = new MediaItem();
    mediaItem.setEmission(new Emission());
    return mediaItem;
  }
}