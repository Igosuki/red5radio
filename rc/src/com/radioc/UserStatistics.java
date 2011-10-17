package com.radioc;

import com.radioc.utils.Utils;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import org.red5.server.api.IClient;
import org.red5.server.api.IConnection;
import org.red5.server.api.IScope;
import org.red5.server.api.ScopeUtils;

class UserStatistics
{
  private HashMap<Integer, Object> apps;
  private int id;

  public void UserStatistics()
  {
  }

  public HashMap<Integer, Object> getStats(String userid, IScope scope)
  {
    this.apps = new HashMap<Integer, Object>();
    this.id = 0;
    IScope root = ScopeUtils.findRoot(scope);
    Set<IClient> clients = root.getClients();
    Iterator<IClient> client = clients.iterator();
    extractConnectionData(root);
    addData("User attributes", "--");
    while (client.hasNext()) {
      IClient c = (IClient)client.next();
      if (c.getId().equals(userid)) {
        Set<String> names = c.getAttributeNames();
        Iterator<String> itnames = names.iterator();
        while (itnames.hasNext()) {
          String key = (String)itnames.next();
          addData(key, c.getAttribute(key));
        }
        addData("Created", Utils.formatDate(c.getCreationTime()));
      }
    }
    return this.apps;
  }

  protected void addData(String name, Object value) {
    HashMap<String, String> app = new HashMap<String, String>();
    app.put("name", name);
    app.put("value", value.toString());
    this.apps.put(Integer.valueOf(this.id), app);
    this.id += 1;
  }

  protected void extractConnectionData(IScope root)
  {
    Collection<Set<IConnection>> conns = root.getConnections();

    for (Set<IConnection> set : conns)
      for (IConnection connection : set) {
        addData("Scope statistics", "--");
        addData("Send bytes", Utils.formatBytes(connection
          .getWrittenBytes()));
        addData("Received bytes", Utils.formatBytes(connection
          .getReadBytes()));
        addData("Send messages", Long.valueOf(connection.getWrittenMessages()));
        addData("Received messages", Long.valueOf(connection.getReadMessages()));
        addData("Dropped messages", Long.valueOf(connection.getDroppedMessages()));
        addData("Pending messages", Long.valueOf(connection.getPendingMessages()));
        addData("Remote address", connection.getRemoteAddress() + ":" + 
          connection.getRemotePort() + " (" + connection.getHost() + 
          ")");
        addData("Path", connection.getPath());
      }
  }
}