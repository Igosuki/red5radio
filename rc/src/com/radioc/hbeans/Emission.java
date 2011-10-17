package com.radioc.hbeans;

import java.sql.Time;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.Valid;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter;

import org.codehaus.jackson.annotate.JsonIgnore;
import org.codehaus.jackson.annotate.JsonTypeInfo;
import org.hibernate.search.annotations.Field;
import org.hibernate.search.annotations.Index;
import org.hibernate.search.annotations.Indexed;
import org.hibernate.search.annotations.Store;
import org.hibernate.validator.constraints.NotBlank;
import org.springframework.format.annotation.DateTimeFormat;

import com.radioc.xml.adapters.TimeAdapter;

@Entity
@Table(name="emissions")
@Indexed(index="Emission")
@JsonTypeInfo(include=JsonTypeInfo.As.PROPERTY, use=JsonTypeInfo.Id.CLASS, property="@class")
@XmlAccessorType(XmlAccessType.FIELD)
public class Emission extends AbstractEntity
{
  private static final long serialVersionUID = 3516735597375834072L;

  @NotBlank
  @Field(index=Index.TOKENIZED, store=Store.NO)
  private String name;
  private String themes;

  @DateTimeFormat(iso=DateTimeFormat.ISO.NONE, pattern="dd/MM/yyyy hh:mm")
  @Column(name="date_emission")
  private Date dateEmission = new Date();

  @Valid
  @ManyToMany(cascade={javax.persistence.CascadeType.REFRESH, javax.persistence.CascadeType.MERGE, javax.persistence.CascadeType.DETACH})
  @JoinTable(name="emis_interv", joinColumns={@javax.persistence.JoinColumn(referencedColumnName="id", name="id_emission")}, inverseJoinColumns={@javax.persistence.JoinColumn(referencedColumnName="id", name="id_intervenant")})
  @JsonIgnore
  private List<Intervenant> intervenants = new ArrayList<Intervenant>();

  @Valid
  @ManyToMany(cascade={javax.persistence.CascadeType.REFRESH, javax.persistence.CascadeType.MERGE, javax.persistence.CascadeType.DETACH})
  @JoinTable(name="emis_intervsuppl", joinColumns={@javax.persistence.JoinColumn(referencedColumnName="id", name="id_emission")}, inverseJoinColumns={@javax.persistence.JoinColumn(referencedColumnName="id", name="id_intervenant")})
  @JsonIgnore
  private List<Intervenant> suppleants = new ArrayList<Intervenant>();
  private Boolean podcastable;

  @Valid
  @OneToMany(mappedBy="emission", cascade={javax.persistence.CascadeType.REFRESH, javax.persistence.CascadeType.MERGE, javax.persistence.CascadeType.DETACH})
  @JsonIgnore
  private List<MediaItem> episodes = new ArrayList<MediaItem>();
  private String category;
  private Boolean complete;
  private String keywords;
  private String summary;
  private String title;
  private String subtitle;
  @XmlElement(name = "emtime", required = false) 
  @XmlJavaTypeAdapter(TimeAdapter.class)
  private Time emtime;
  private String weekday;
  private String week;

  public String getWeek()
  {
    return this.week;
  }

  public void setWeek(String week)
  {
    this.week = week;
  }

  public Time getEmtime()
  {
    return this.emtime;
  }

  public void setEmtime(Time emtime)
  {
    this.emtime = emtime;
  }

  public String getWeekday()
  {
    return this.weekday;
  }

  public void setWeekday(String weekday)
  {
    this.weekday = weekday;
  }

  public String getTitle()
  {
    return this.title;
  }

  public void setTitle(String title)
  {
    this.title = title;
  }

  public String getSubtitle()
  {
    return this.subtitle;
  }

  public void setSubtitle(String subtitle)
  {
    this.subtitle = subtitle;
  }

  public String getCategory()
  {
    return this.category;
  }

  public void setCategory(String category)
  {
    this.category = category;
  }

  public Boolean getComplete()
  {
    return this.complete;
  }

  public void setComplete(Boolean complete)
  {
    this.complete = complete;
  }

  public String getKeywords()
  {
    return this.keywords;
  }

  public void setKeywords(String keywords)
  {
    this.keywords = keywords;
  }

  public String getSummary()
  {
    return this.summary;
  }

  public void setSummary(String summary)
  {
    this.summary = summary;
  }

  @JsonIgnore
  public List<MediaItem> getEpisodes()
  {
    return this.episodes;
  }

  public void setEpisodes(List<MediaItem> episodes)
  {
    this.episodes = episodes;
  }

  @JsonIgnore
  public List<Intervenant> getIntervenants()
  {
    return this.intervenants;
  }

  public void setIntervenants(List<Intervenant> intervenants)
  {
    this.intervenants = intervenants;
  }

  @JsonIgnore
  public List<Intervenant> getSuppleants()
  {
    return this.suppleants;
  }

  public void setSuppleants(List<Intervenant> suppleants)
  {
    this.suppleants = suppleants;
  }

  public String getName()
  {
    return this.name;
  }

  public void setName(String name)
  {
    this.name = name;
  }

  public String getThemes()
  {
    return this.themes;
  }

  public void setThemes(String themes)
  {
    this.themes = themes;
  }

  public Date getDateEmission()
  {
    return this.dateEmission;
  }

  public void setDateEmission(Date dateEmission)
  {
    this.dateEmission = dateEmission;
  }

  public Boolean getPodcastable()
  {
    return this.podcastable;
  }

  public void setPodcastable(Boolean podacastable)
  {
    this.podcastable = podacastable;
  }

  public static Emission createEmpty()
  {
    Emission returnEm = new Emission();
    returnEm.setDatecreate(new Date());
    return returnEm;
  }

  public Emission() {
  }

  public Emission(Long id) {
    super(id);
  }

  public boolean equals(Object obj)
  {
    return (obj != null) && ((obj instanceof Emission)) && (equals((Emission)obj));
  }

  private boolean equals(Emission em)
  {
    return (getId() != null) && (em.getId() != null) && 
      (getId().equals(em.getId()));
  }

  public int hashCode()
  {
    if (getId() == null) {
      return 0;
    }
    return getId().hashCode();
  }
}