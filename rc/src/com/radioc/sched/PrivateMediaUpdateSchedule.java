package com.radioc.sched;

import com.radioc.controllers.services.MediaItemService;
import com.radioc.hbeans.MediaItem;
import java.util.Date;
import org.red5.server.api.scheduling.IScheduledJob;
import org.red5.server.api.scheduling.ISchedulingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository("privateMediaUpdateSchedule")
public class PrivateMediaUpdateSchedule
  implements IScheduledJob
{

  @Autowired
  @Qualifier("mediaItemsService")
  private MediaItemService miService;

  public void execute(ISchedulingService arg0)
    throws CloneNotSupportedException
  {
    if (this.miService != null)
      for (MediaItem mi : this.miService.list())
        if ((mi.getPubDate() != null) && (mi.getPubDate().before(new Date())))
          this.miService.updateToPrivate(mi);
  }
}