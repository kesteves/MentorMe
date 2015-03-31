
/** 

* Copyright 2015 -  

* Licensed under the Academic Free License version 3.0 

* http://opensource.org/licenses/afl-3.0  

*  

* Authors: Luis Velasco, Kevin Bughao  

*/

package peermentoring;

import peermentoring.PMF;
import peermentoring.Question;

import java.util.List;
import java.util.Date;

import javax.jdo.PersistenceManager;
import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.Inheritance;
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
public class Answer {
	private static int numberOfAnswers = 0;
	
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Key key;
	
	@Persistent
	private int answerId;
	@Persistent
	private String answerContent;
	@Persistent
	private int questionId;
	
	private Answer(String answerContent, int questionId) {
		this.answerId = ++numberOfAnswers;
		this.answerContent = answerContent;
		this.questionId = questionId;
	}
	
	public static void createAnswer(String answerContent, int questionId) {
		
		
	}
	
	
}
