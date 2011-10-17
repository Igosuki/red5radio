package com.radioc.streams.security;

import org.red5.server.api.IScope;
import org.red5.server.api.stream.IStreamPlaybackSecurity;
import org.red5.server.api.stream.IStreamPublishSecurity;

public class DenyingHandlerSecurity
  implements IStreamPlaybackSecurity, IStreamPublishSecurity
{
  public boolean isPlaybackAllowed(IScope scope, String name, int start, int length, boolean flushPlaylist)
  {
    return false;
  }

  public boolean isPublishAllowed(IScope arg0, String arg1, String arg2)
  {
    return false;
  }
}