package com.radioc.forms;

import com.radioc.hbeans.MediaItem;
import org.springframework.web.multipart.MultipartFile;

public class FileUploadForm
{
  private MultipartFile file;
  private MediaItem mi = new MediaItem();

  public MediaItem getMi()
  {
    return this.mi;
  }

  public void setMi(MediaItem mi)
  {
    this.mi = mi;
  }

  public MultipartFile getFile()
  {
    return this.file;
  }

  public void setFile(MultipartFile file)
  {
    this.file = file;
  }
}