package com.radioc.streams.utils;

import com.radioc.controllers.services.MediaItemService;
import com.radioc.hbeans.MediaItem;
import com.radioc.utils.MediaConstants.MediaType;
import java.io.PrintStream;
import org.red5.logging.Red5LoggerFactory;
import org.red5.server.api.IScope;
import org.red5.server.api.ScopeUtils;
import org.red5.server.api.stream.IStreamFilenameGenerator;
import org.red5.server.api.stream.IStreamFilenameGenerator.GenerationType;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Repository;

@Repository("streamFilenameGenerator")
public class StreamFileNameGenerator
  implements IStreamFilenameGenerator
{
  Logger logger = Red5LoggerFactory.getLogger(StreamFileNameGenerator.class);

  @Autowired
  @Qualifier("mediaItemsService")
  MediaItemService miService;

  @Value("#{propsfile['streaming.mediaPath']}")
  String mediaPath;

  @Value("#{propsfile['streaming.mediaPath']}")
  String recordPath;

  @Value("#{propsfile['streaming.absolutePath']}")
  Boolean absolutePath;

  @Value("#{propsfile['finder.filesdir']}")
  String filesDir;

  @Value("#{propsfile['finder.flashdir']}")
  String flashDir;

  @Value("#{propsfile['finder.mp3dir']}")
  String mp3Dir;

  @Value("#{propsfile['finder.mp4dir']}")
  String mp4Dir;

  public String generateFilename(IScope scope, String name, IStreamFilenameGenerator.GenerationType type) { return generateFilename(scope, name, null, type);
  }

  public String generateFilename(IScope scope, String name, String extension, IStreamFilenameGenerator.GenerationType type)
  {
    this.logger.debug("Get stream directory: scope={}, name={}, type={}", new Object[] { scope, name, type.toString() });
    StringBuilder filename = new StringBuilder();
    if (!this.absolutePath.booleanValue())
    {
      IScope app = ScopeUtils.findApplication(scope);
      while ((scope != null) && (scope != app)) {
        filename.insert(0, scope.getName() + "/");
        scope = scope.getParent();
      }
    }
    if (type.equals(IStreamFilenameGenerator.GenerationType.PLAYBACK)) {
      this.logger.debug("Playback path used");
      filename.append(this.mediaPath);
    } else {
      this.logger.debug("Record path used");
      filename.append(this.recordPath);
    }
    if (filename.charAt(filename.length() - 1) != '/') {
      filename.append('/');
    }
    filename.append(getSuffix(name, extension));
    this.logger.debug("Generated filename: {}", filename.toString());
    System.out.println("File name: " + filename.toString());
    return filename.toString();
  }

  public String getSuffix(String name, String extension)
  {
    StringBuilder suffix = new StringBuilder();
    String extTmp = !org.apache.commons.lang.StringUtils.isBlank(extension) ? extension : 
      org.springframework.util.StringUtils.getFilenameExtension(name);
    MediaItem mi = null;
    String hashKey = !org.apache.commons.lang.StringUtils.isBlank(extTmp) ? name.split("[.]")[0] : name;
    if ((mi = this.miService.getItemByAccessKey(hashKey)) != null) {
      name = mi.getPath() + "." + mi.getType().getTerm();
    }
    if (!org.apache.commons.lang.StringUtils.isBlank(extTmp)) {
      if (extTmp.equals("flv"))
        suffix.append(this.flashDir);
      else if (extTmp.equals("mp3"))
        suffix.append(this.mp3Dir);
      else if (extTmp.equals("mp4"))
        suffix.append(this.mp4Dir);
      else {
        suffix.append(this.filesDir);
      }
      if (suffix.charAt(suffix.length() - 1) != '/') {
        suffix.append('/');
      }
      suffix.append(name);
      if (!org.apache.commons.lang.StringUtils.isBlank(extension))
        suffix.append(extension);
    }
    else {
      suffix.append(name);
    }

    return suffix.toString();
  }

  public boolean resolvesToAbsolutePath()
  {
    return this.absolutePath.booleanValue();
  }

  public void setRecordPath(String path) {
    this.recordPath = path;
  }
  public void setPlaybackPath(String path) {
    this.mediaPath = path;
  }
  public void setAbsolutePath(Boolean absolute) {
    this.absolutePath = absolute;
  }
}