package com.radioc;

import com.radioc.utils.Utils;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import org.red5.server.api.IConnection;
import org.red5.server.api.IScope;
import org.red5.server.api.persistence.IPersistable;
import org.red5.server.api.persistence.IPersistenceStore;
import org.red5.server.api.statistics.IScopeStatistics;

class ScopeStatistics {
	private HashMap<Integer, Object> apps;
	private int id;

	public void ScopeStatistics() {
	}

	public HashMap<Integer, Object> getStats(IScope root) {
		this.apps = new HashMap<Integer, Object>();
		this.id = 0;
		IScopeStatistics stats = root.getStatistics();
		extractConnectionData(root);
		addData("Persistence Data", "--");
		IPersistenceStore data = root.getStore();
		Collection<IPersistable> objects = data.getObjects();
		Iterator<IPersistable> iter = objects.iterator();
		while (iter.hasNext()) {
			IPersistable name = (IPersistable) iter.next();
			addData("Name", name.getName());
			addData("Type", name.getType());
			addData("Path", name.getPath());
			addData("Last modified", Utils.formatDate(name.getLastModified()));
		}

		addData("Scope Data", "--");
		addData("Active sub scopes",
				Integer.valueOf(stats.getActiveSubscopes()));
		addData("Total sub scopes", Integer.valueOf(stats.getTotalSubscopes()));
		addData("Active clients", Integer.valueOf(stats.getActiveClients()));
		addData("Total clients", Integer.valueOf(stats.getTotalClients()));
		addData("Active connections",
				Integer.valueOf(stats.getActiveConnections()));
		addData("Total connections",
				Integer.valueOf(stats.getTotalConnections()));
		addData("Created", Utils.formatDate(stats.getCreationTime()));
		return this.apps;
	}

	protected void addData(String name, Object value) {
		HashMap<String, String> app = new HashMap<String, String>();
		app.put("name", name);
		app.put("value", value.toString());
		this.apps.put(Integer.valueOf(this.id), app);
		this.id += 1;
	}

	protected void extractConnectionData(IScope root) {
		Collection<Set<IConnection>> conns = root.getConnections();

		for (Set<IConnection> set : conns)
			for (IConnection connection : set) {
				addData("Scope statistics", "--");
				addData("Send bytes",
						Utils.formatBytes(connection.getWrittenBytes()));
				addData("Received bytes",
						Utils.formatBytes(connection.getReadBytes()));
				addData("Send messages",
						Long.valueOf(connection.getWrittenMessages()));
				addData("Dropped messages",
						Long.valueOf(connection.getDroppedMessages()));
				addData("Pending messages",
						Long.valueOf(connection.getPendingMessages()));
				addData("Received messages",
						Long.valueOf(connection.getReadMessages()));
				addData("Remote address",
						connection.getRemoteAddress() + ":"
								+ connection.getRemotePort() + " ("
								+ connection.getHost() + ")");
				addData("Path", connection.getPath());
			}
	}
}