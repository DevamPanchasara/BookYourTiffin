package com.project.service;

import java.util.List;

import com.project.model.PackageVO;

public interface PackageService {

	void savePackage(PackageVO packageVO);

	List<?> getPackage();

	List<?> getPackageById(PackageVO packageVO);
}
