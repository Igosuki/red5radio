package com.radioc.interceptors;

import java.io.File;
import java.io.Serializable;
import java.sql.Time;

import org.apache.commons.lang.StringUtils;
import org.hibernate.EmptyInterceptor;
import org.hibernate.Transaction;
import org.hibernate.type.Type;
import org.red5.io.IStreamableFile;
import org.red5.io.IStreamableFileService;
import org.red5.io.StreamableFileFactory;
import org.red5.logging.Red5LoggerFactory;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;

import com.radioc.hbeans.MediaItem;
import com.radioc.utils.MediaConstants.MediaType;

public class DurationInterceptor extends EmptyInterceptor {
	private static Logger log = Red5LoggerFactory.getLogger(
			DurationInterceptor.class, "admin");
	private static final long serialVersionUID = 4251740137579628014L;

	@Value("#{propsfile['streaming.mediaPath.absolute']}")
	private String path;

	@Value("#{propsfile['finder.mp3dir']}")
	String mp3Dir;
	private boolean pathchanged;
	private String completepath;

	@Autowired
	@Qualifier("streamableFileFactory")
	private StreamableFileFactory streamFactory;

	public boolean onFlushDirty(Object entity, Serializable id,
			Object[] currentState, Object[] previousState,
			String[] propertyNames, Type[] types) {
		if ((entity instanceof MediaItem)) {
			int durationIdx = -1;
			int pathIdx = -1;
			int typeIdx = -1;
			for (int i = 0; i < propertyNames.length; i++) {
				if ("duration".equals(propertyNames[i]))
					durationIdx = i;
				else if ("path".equals(propertyNames[i]))
					pathIdx = i;
				else if ("type".equals(propertyNames[i])) {
					typeIdx = i;
				}
			}

			if ((pathIdx != -1)
					&& (!StringUtils.isBlank((String) currentState[pathIdx]))
					&& (previousState != null)
					&& (!currentState[pathIdx].equals(previousState[pathIdx]))
					&& (MediaType.MP3.equals(currentState[typeIdx]))) {
				StringBuilder pathBuilder = new StringBuilder(this.path);
				if (!this.path.endsWith("/")) {
					pathBuilder.append("/");
				}
				pathBuilder.append(this.mp3Dir);
				if (!this.mp3Dir.endsWith("/")) {
					pathBuilder.append("/");
				}
				this.completepath = new String(pathBuilder
						.append(currentState[pathIdx]).append(".")
						.append(MediaType.MP3.getTerm()));
				try {
					File fp = new File(this.completepath);
					IStreamableFileService service = this.streamFactory
							.getService(fp);
					IStreamableFile streamableFile = service
							.getStreamableFile(fp);
					long duration = streamableFile.getReader().getDuration();
					currentState[durationIdx] = new Time(duration);
				} catch (Exception e) {
					log.debug("Could not determine duration for file : "
							+ this.completepath);
				}
			}
			return true;
		}
		return false;
	}

	public boolean onSave(Object entity, Serializable id, Object[] state,
			String[] propertyNames, Type[] types) {
		if ((entity instanceof MediaItem)) {
			int durationIdx = -1;
			int pathIdx = -1;
			int typeIdx = -1;
			for (int i = 0; i < propertyNames.length; i++) {
				if ("duration".equals(propertyNames[i]))
					durationIdx = i;
				else if ("path".equals(propertyNames[i]))
					pathIdx = i;
				else if ("type".equals(propertyNames[i])) {
					typeIdx = i;
				}
			}

			if ((pathIdx != -1)
					&& (!StringUtils.isBlank((String) state[pathIdx]))
					&& (MediaType.MP3.equals(state[typeIdx]))) {
				StringBuilder pathBuilder = new StringBuilder(this.path);
				if (!this.path.endsWith("/")) {
					pathBuilder.append("/");
				}
				pathBuilder.append(this.mp3Dir);
				if (!this.mp3Dir.endsWith("/")) {
					pathBuilder.append("/");
				}
				this.completepath = new String(pathBuilder
						.append(state[pathIdx]).append(".")
						.append(MediaType.MP3.getTerm()));
				try {
					File fp = new File(this.completepath);
					IStreamableFileService service = this.streamFactory
							.getService(fp);
					IStreamableFile streamableFile = service
							.getStreamableFile(fp);
					long duration = streamableFile.getReader().getDuration();
					state[durationIdx] = new Time(duration);
				} catch (Exception e) {
					log.debug("Could not determine duration for file : "
							+ this.completepath);
				}
			}
			return true;
		}
		return false;
	}

	public void afterTransactionCompletion(Transaction tx) {
		if ((this.pathchanged) && (tx.wasCommitted())) {
			log.debug("Duration commited successfully");
		}
		this.pathchanged = false;
		this.completepath = "";
	}
}