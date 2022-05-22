package com.project.dao;

import java.util.List;

import com.project.model.FeedbackVO;
import com.project.model.LoginVO;
import com.project.model.VendorRatingVO;
import com.project.model.VendorVO;

public interface FeedbackDAO {

	void saveFeedback(FeedbackVO feedbackVO);

	List<?> getFeedback();

	List<?> getFeedbackById(LoginVO loginVO);

	List<?> getUserFeedback(FeedbackVO feedbackVO);

	void saveVendorRating(VendorRatingVO vendorRatingVO);

	List<?> getVendorRatingByID(VendorRatingVO vendorratingVO);

	List<?> getFeedbackbyType(String string);

	List<?> getVendorAvgFeedbackByID(VendorVO vendor1);
	
	 List<?> getVendorAvgFeedback();

}
