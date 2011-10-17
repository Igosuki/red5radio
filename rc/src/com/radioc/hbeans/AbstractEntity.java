package com.radioc.hbeans;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Version;

@MappedSuperclass
public abstract class AbstractEntity
  implements Serializable, Identifiable<Long>
{
  private static final long serialVersionUID = -3098445156938262354L;

  @Id
  @GeneratedValue(strategy=GenerationType.AUTO)
  private Long id;

  @Version
  @Temporal(TemporalType.TIMESTAMP)
  private Date datemodif;

  @Temporal(TemporalType.TIMESTAMP)
  private Date datecreate;

  @PrePersist
  protected void onCreate()
  {
    this.datecreate = new Date();
  }
  @PreUpdate
  protected void onUpdate() {
    this.datemodif = new Date();
  }

  public Long getId()
  {
    return this.id;
  }

  public void setId(Long id)
  {
    this.id = id;
  }

  public Date getDatemodif()
  {
    return this.datemodif;
  }

  public void setDatemodif(Date datemodif)
  {
    this.datemodif = datemodif;
  }

  public Date getDatecreate()
  {
    return this.datecreate;
  }

  public void setDatecreate(Date datecreate)
  {
    this.datecreate = datecreate;
  }

  public boolean equals(Object obj)
  {
    return (obj != null) && ((obj instanceof AbstractEntity)) && 
      (equals((AbstractEntity)obj));
  }

  private boolean equals(AbstractEntity entity)
  {
    return (getId() != null) && (entity.getId() != null) && 
      (getId().equals(entity.getId()));
  }

  public int hashCode()
  {
    if (getId() == null) {
      return 0;
    }
    return getId().hashCode();
  }

  public AbstractEntity() {
  }

  public AbstractEntity(Long id) {
    this.id = id;
  }
}