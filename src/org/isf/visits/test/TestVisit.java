package org.isf.visits.test;


import static org.junit.Assert.assertEquals;

import java.util.GregorianCalendar;

import org.isf.patient.model.Patient;
import org.isf.utils.exception.OHException;
import org.isf.visits.model.Visit;
import org.isf.ward.model.Ward;


public class TestVisit 
{	
	private GregorianCalendar date = new GregorianCalendar(10, 9, 8);
	private String note = "TestNote";
	private boolean sms = true;
	private String duration = "10";
	private String service = "testService";
			
	public Visit setup(
			Patient patient,
			boolean usingSet, Ward ward) throws OHException 
	{
		Visit visit;
	
				
		if (usingSet)
		{
			visit = new Visit();
			_setParameters(patient, visit);
		}
		else
		{
			// Create Visit with all parameters 
			visit = new Visit(0, date, patient, note, sms, ward, duration, service);
		}
				    	
		return visit;
	}
	
	public void _setParameters(
			Patient patient,
			Visit visit) 
	{	
		visit.setDate(date);
		visit.setNote(note);
		visit.setPatient(patient);
		visit.setSms(sms);
				
		return;
	}
	
	public void check(
			Visit visit) 
	{		
    	assertEquals(date,visit.getDate());
    	assertEquals(note,visit.getNote());
    	assertEquals(sms,visit.isSms());
		
		return;
	}
}
