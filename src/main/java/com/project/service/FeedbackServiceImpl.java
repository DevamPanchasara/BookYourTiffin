package com.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.FeedbackDAO;
import com.project.model.FeedbackVO;
import com.project.model.LoginVO;
import com.project.model.VendorRatingVO;
import com.project.model.VendorVO;

@Service
public class FeedbackServiceImpl implements FeedbackService {

	@Autowired 
	private FeedbackDAO feedbackDAO;
	
	public void saveFeedback(FeedbackVO feedbackVO) {
		this.feedbackDAO.saveFeedback(feedbackVO);
		
	}

	public List<?> getFeedback() {
		List<?> feedbackList = this.feedbackDAO.getFeedback();
		return feedbackList;
	}

	@Override
	public List<?> getFeedbackById(LoginVO loginVO) {
		List<?> feedbackList = this.feedbackDAO.getFeedbackById(loginVO);
		return feedbackList;
	}

	@Override
	public List<?> getUserFeedback(FeedbackVO feedbackVO) {
		List<?> feedbackList = this.feedbackDAO.getUserFeedback(feedbackVO);
		return feedbackList;
	}

	@Override
	public void saveVendorRating(VendorRatingVO vendorRatingVO) {
		
		this.feedbackDAO.saveVendorRating(vendorRatingVO);
	}

	@Override
	public List<?> getVendorRatingByID(VendorRatingVO vendorratingVO) {
		List<?> vendorRaringList = this.feedbackDAO.getVendorRatingByID(vendorratingVO);
		return vendorRaringList;
	}

	@Override
	public List<?> getFeedbackbyType(String string) {
		List<?> vendorRaringList = this.feedbackDAO.getFeedbackbyType(string);
		return vendorRaringList;
	}

	@Override
	public List<?> getVendorAvgFeedbackByID(VendorVO vendor1) {
		List<?> vendorRaringList = this.feedbackDAO.getVendorAvgFeedbackByID(vendor1);
		return vendorRaringList;
	}
	
	@Override
	public List<?> getVendorAvgFeedback(){
		List<?> vendorRaringList = this.feedbackDAO.getVendorAvgFeedback();
		return vendorRaringList;
	}

}
