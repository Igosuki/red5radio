package com.radioc.hbeans;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import org.codehaus.jackson.annotate.JsonIgnore;
import org.codehaus.jackson.annotate.JsonTypeInfo;
import org.codehaus.jackson.annotate.JsonTypeInfo.As;
import org.codehaus.jackson.annotate.JsonTypeInfo.Id;
import org.hibernate.search.annotations.Field;
import org.hibernate.search.annotations.Index;
import org.hibernate.search.annotations.Indexed;
import org.hibernate.search.annotations.Store;
import org.hibernate.validator.constraints.NotBlank;

@Entity
@Table(name="intervenants")
@Indexed(index="Intervenant")
@JsonTypeInfo(include=JsonTypeInfo.As.PROPERTY, use=JsonTypeInfo.Id.CLASS, property="@class")
public class Intervenant extends AbstractEntity
{
  private static final long serialVersionUID = -3486463080246898809L;

  @NotBlank
  @Field(index=Index.TOKENIZED, store=Store.NO)
  private String name;
  private String email;

  @JsonIgnore
  @ManyToMany(cascade={javax.persistence.CascadeType.REFRESH, javax.persistence.CascadeType.MERGE, javax.persistence.CascadeType.DETACH}, fetch=FetchType.EAGER)
  @JoinTable(name="emis_interv", joinColumns={@javax.persistence.JoinColumn(referencedColumnName="id", name="id_intervenant")}, inverseJoinColumns={@javax.persistence.JoinColumn(referencedColumnName="id", name="id_emission")})
  private List<Emission> emissions = new ArrayList<Emission>();

  @JsonIgnore
  @ManyToMany(cascade={javax.persistence.CascadeType.REFRESH, javax.persistence.CascadeType.MERGE, javax.persistence.CascadeType.DETACH})
  @JoinTable(name="emis_intervsuppl", joinColumns={@javax.persistence.JoinColumn(referencedColumnName="id", name="id_intervenant")}, inverseJoinColumns={@javax.persistence.JoinColumn(referencedColumnName="id", name="id_emission")})
  private List<Emission> emissionssupp = new ArrayList<Emission>();

  @JsonIgnore
  public List<Emission> getEmissionssupp()
  {
    return this.emissionssupp;
  }

  @JsonIgnore
  public void setEmissionssupp(List<Emission> emissionssupp)
  {
    this.emissionssupp = emissionssupp;
  }

  public Intervenant(Long imId) {
    super(imId);
  }

  public Intervenant()
  {
  }

  public String getName()
  {
    return this.name;
  }

  public void setName(String name)
  {
    this.name = name;
  }

  public String getEmail()
  {
    return this.email;
  }

  public void setEmail(String email)
  {
    this.email = email;
  }

  public List<Emission> getEmissions()
  {
    return this.emissions;
  }

  public void setEmissions(List<Emission> emissions)
  {
    this.emissions = emissions;
  }

  public static Intervenant createEmpty()
  {
    return new Intervenant();
  }

  public boolean equals(Object obj)
  {
    return (obj != null) && ((obj instanceof Intervenant)) && (equals((Intervenant)obj));
  }

  private boolean equals(Intervenant it)
  {
    return (getId() != null) && (it.getId() != null) && 
      (getId().equals(it.getId()));
  }

  public int hashCode()
  {
    if (getId() == null) {
      return 0;
    }
    return getId().hashCode();
  }
}