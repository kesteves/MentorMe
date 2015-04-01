/** 

* Copyright 2015 -  

* Licensed under the Academic Free License version 3.0 

* http://opensource.org/licenses/afl-3.0  

*  

* Authors: Keith Yarborough, Luis Velasco

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

//these annotations are needed to ensure the class Question is able to be saved into the datastore,
//the inheritance annotation specifies how the data store will interpret the objects with in an inheritance hierarchy, in this case
//the datastore will make a separate entity/table for every object.
@PersistenceCapable
@Inheritance(customStrategy = "complete-table")
public class Question {
	
	private static int numberOfQuestions = 0;
	
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Key key;
	@Persistent
	private int questionID;
	@Persistent
	private String title;
	@Persistent
	private String questionContent;
	@Persistent
	private List<Answer> answers;
	@Persistent
	private boolean isHonorCodeCompliant;
	
	private Question(String title, String qContent){
		this.questionID = ++numberOfQuestions;
		this.title = title;
		this.questionContent = qContent;
		//this.tags = tags;
		isHonorCodeCompliant = false;
	}
	
	public static void createQuestion(String title, String question) {
		Question q = new Question(title, question);
		PersistenceManager pm = PMF.get().getPersistenceManager();
		
		try{
			
			pm.makePersistent(q);
			
		}
		finally{
			pm.close();
		}
		
	}
	//method to set the answer to the answer collection for the question
	public void setAnswer(Answer ans){
		answers.add(ans);
	}
	
	@SuppressWarnings("unchecked")
	public static List<Question> getAllQuestions() {
		PersistenceManager pm = PMF.get().getPersistenceManager();
		List<Question> results = null;
		try {
			
			Query q = pm.newQuery(Question.class);
			q.setOrdering("title asc");			
			results = (List<Question>)q.execute();
		} catch (Exception e) {
			
		}
		finally{
			pm.close();
		}
		return results;
	}
	/**
	 * Method to get a question from datastore based on the question id. added 3/3/2015 by LV
	 * @param aQuestionId
	 * @return a Question Object if found. null otherwise.
	 */
	public static Question getAQuestion(int aQuestionId){
		PersistenceManager pm = PMF.get().getPersistenceManager();
		List<Question> questionResults = getAllQuestions();
		for(Question qu: questionResults){
			if(qu.getQuestionID() == aQuestionId){
				return qu;
			}
		}
		return null;
	}
	
	public Key getKey(){
		return this.key;
	}
	
	public String getTitle(){
		return this.title;
	}
	//added this getter to get question id.
	public int getQuestionID(){
		return this.questionID;
	}
	
	public String getQuestionContent(){
		return this.questionContent;
	}
	
	public boolean isHonorCodeCompliant(){
		return this.isHonorCodeCompliant;
	}
	
	public boolean setQuestionContent(String textContent){
		if(isStringDataValid(textContent)){
			this.questionContent = textContent;
			return true;
		}else{
			return false;
		}
	}	
	
	public boolean setTitle(String aTitle){
		if(isStringDataValid(aTitle)){
			this.title = aTitle;
			return true;
		}else{
			return false;
		}
	}
	/**
	 * Helper method that checks if a given string value is valid. Valid meaning it is not null, it is not empty,
	 * and it is not just full of blank spaces. (can probably be replaced by a regular expression later)
	 * @param strValue
	 * @return true if strValue meets the above conditions, false otherwise.
	 */
	private boolean isStringDataValid(String strValue){
		boolean isValid = true;
		boolean isStrEmpty = true;
		//check for an null variable being passed in
		if(strValue == null){
			return false;
		}
		//check to see strValue is not an empty string
		if(strValue.length() > 0 ){
			//check to make sure strValue is not full of empty spaces.
			for(int i = 0; i < strValue.length(); i++){
				if(!(strValue.charAt(i) == ' ')){
					isStrEmpty = false;
					break;
				}
			}
			if(isStrEmpty){
				isValid = false;
			}
		}else{
			isValid = false;
		}
		return isValid;
	}
}
