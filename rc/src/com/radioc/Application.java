package com.radioc;

import com.radioc.controllers.services.IndexingService;
import com.radioc.sched.AppleStoreUpdateSchedule;
import com.radioc.sched.PrivateMediaUpdateSchedule;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import org.red5.logging.Red5LoggerFactory;
import org.red5.server.adapter.ApplicationAdapter;
import org.red5.server.api.IClient;
import org.red5.server.api.IConnection;
import org.red5.server.api.IScope;
import org.red5.server.api.Red5;
import org.red5.server.api.ScopeUtils;
import org.red5.server.api.so.ISharedObjectSecurity;
import org.red5.server.api.stream.IStreamPlaybackSecurity;
import org.red5.server.api.stream.IStreamPublishSecurity;
import org.red5.server.scheduling.ApplicationSchedulingService;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

public class Application extends ApplicationAdapter
{
  private static Logger log = Red5LoggerFactory.getLogger(Application.class, "rc");
  private IScope scope;
  private HashMap<Integer, String> scopes;
  private int scope_id = 0;

  @Autowired
  @Qualifier("scheduler")
  ApplicationSchedulingService scheduler;

  @Autowired
  @Qualifier("sharedObjectSecurity")
  private ISharedObjectSecurity sharedObjectSecurity;

  @Autowired
  @Qualifier("hostPlaybackSecurity")
  private IStreamPlaybackSecurity hostPlaybackSecurity;

  @Autowired
  @Qualifier("hostPublishSecurity")
  private IStreamPublishSecurity hostPublishSecurity;

  @Autowired
  @Qualifier("indexingService")
  private IndexingService indexService;

  @Autowired
  @Qualifier("privateMediaUpdateSchedule")
  private PrivateMediaUpdateSchedule pSchedule;

  public boolean appConnect(IConnection conn, Object[] params) { return super.appConnect(conn, params);
  }

  public boolean appStart(IScope app)
  {
    log.info("RadioC application started");

    this.scheduler.addScheduledJob(10000000, new AppleStoreUpdateSchedule());
    this.scheduler.addScheduledJob(1000000, this.pSchedule);
    registerSharedObjectSecurity(this.sharedObjectSecurity);
    registerStreamPlaybackSecurity(this.hostPlaybackSecurity);
    registerStreamPublishSecurity(this.hostPublishSecurity);
    this.indexService.initIndexes();
    return true;
  }

  public boolean connect(IConnection conn, IScope scope, Object[] params)
  {
    this.scope = scope;
    return true;
  }

  public HashMap<Integer, Object> getApplications()
  {
    IScope root = ScopeUtils.findRoot(this.scope);
    Iterator iter = root.getScopeNames();
    HashMap apps = new HashMap();
    int id = 0;
    while (iter.hasNext()) {
      String name = (String)iter.next();
      String name2 = name.substring(1, name.length());
      int size = getConnections(name2).size();
      HashMap app = new HashMap();
      app.put("name", name2);
      app.put("clients", size);
      apps.put(Integer.valueOf(id), app);
      id++;
    }
    return apps;
  }

  public HashMap getStatistics(String scopeName)
  {
    ScopeStatistics scopestats = new ScopeStatistics();
    return scopestats.getStats(getScope(scopeName));
  }

  public HashMap getUserStatistics(String userid)
  {
    UserStatistics userstats = new UserStatistics();
    return userstats.getStats(userid, this.scope);
  }

  public HashMap<Integer, String> getScopes(String scopeName)
  {
    IScope root = ScopeUtils.findRoot(this.scope);
    IScope scopeObj = root.getScope(scopeName);
    this.scopes = new HashMap();
    try {
      getRooms(scopeObj, 0);
    } catch (NullPointerException npe) {
      log.debug(npe.toString());
    }
    return this.scopes;
  }

  public void getRooms(IScope root, int depth)
  {
    Iterator iter = root.getScopeNames();
    String indent = "";
    for (int i = 0; i < depth; i++) {
      indent = indent + " ";
    }
    while (iter.hasNext()) {
      String name = (String)iter.next();
      String name2 = name.substring(1, name.length());
      try {
        IScope parent = root.getScope(name2);

        getRooms(parent, depth + 1);
        this.scopes.put(Integer.valueOf(this.scope_id), indent + name2);
        this.scope_id += 1;
      }
      catch (NullPointerException npe) {
        log.debug(npe.toString());
      }
    }
  }

  public HashMap<Integer, String> getConnections(String scopeName)
  {
    HashMap connections = new HashMap();
    IScope root = getScope(scopeName);
    if (root != null) {
      Set clients = root.getClients();
      Iterator client = clients.iterator();
      int id = 0;
      while (client.hasNext()) {
        IClient c = (IClient)client.next();
        String user = c.getId();
        connections.put(Integer.valueOf(id), user);
        id++;
      }
    }
    return connections;
  }

  public void killUser(String userid)
  {
    IScope root = ScopeUtils.findRoot(this.scope);
    Set clients = root.getClients();
    Iterator client = clients.iterator();
    while (client.hasNext()) {
      IClient c = (IClient)client.next();
      if (c.getId().equals(userid))
        c.disconnect();
    }
  }

  private IScope getScope(String scopeName)
  {
    IScope root = ScopeUtils.findRoot(this.scope);
    return getScopes(root, scopeName);
  }

  private IScope getScopes(IScope root, String scopeName)
  {
    if (root.getName().equals(scopeName)) {
      return root;
    }
    Iterator iter = root.getScopeNames();
    while (iter.hasNext()) {
      String name = (String)iter.next();
      String name2 = name.substring(1, name.length());
      try {
        IScope parent = root.getScope(name2);
        IScope scope = getScopes(parent, scopeName);
        if (scope != null)
          return scope;
      }
      catch (NullPointerException npe) {
        log.debug(npe.toString());
      }
    }

    return null;
  }

  public void disconnect(IConnection conn, IScope scope)
  {
    String rid = conn.getClient().getId();

    log.info("Client with id {} disconnected.", rid);
    super.disconnect(conn, scope);
  }

  public IScope getScope()
  {
    return this.scope;
  }

  public static IConnection getConnectionLocal() {
    return Red5.getConnectionLocal();
  }
}