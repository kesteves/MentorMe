/** 

* Copyright 2015 -  

* Licensed under the Academic Free License version 3.0 

* http://opensource.org/licenses/afl-3.0  

*  

* Authors: Keith Yarborough, Ken Esteves

*/

package peermentoring;

import peermentoring.PMF;

import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;
import javax.jdo.Query;

import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.FetchOptions;
import com.google.appengine.api.users.User;

@PersistenceCapable
public class Tags {
	private static int tagCounter = 0;
	
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Key key;
	@Persistent
	private int tagID;
	@Persistent
	private String tag;
	
	private Tags(String tag) {
		this.tag = tag;
		tagID = ++tagCounter;
	}
	
	public static boolean createTag(String t) {
		
		//Convert the string to lower case.
		t = t.toLowerCase();
		
		//Capitalize the first letter in the string
		t = t.substring(0, 1).toUpperCase() + t.substring(1);
		
		PersistenceManager pm = PMF.get().getPersistenceManager();
		if (t == null || t.equals("") || checkForDuplicates(t, pm)){
			return false;
		}
		
		Tags tag = new Tags(t);
		
		
		return true;
	}
	
	private static boolean checkForDuplicates(String t, PersistenceManager pm) {
		
		Tags result = null;
		
		try {
			
			Query q = pm.newQuery(Tags.class);
			q.setFilter("tag == t");
			q.declareParameters("t");
			result = (Tags)q.execute();
		
		}
		catch(Exception e){
			
		}
		
		if (result == null || !result.getTag().equals(t)) 
			return false;
		
		return true;
		
	}
	
	public String getTag() {return tag;}
	
}
