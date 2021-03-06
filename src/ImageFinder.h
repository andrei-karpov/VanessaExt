#ifndef __IMAGEFINDER_H__
#define __IMAGEFINDER_H__

#ifdef USE_OPENCV

#include "stdafx.h"
#include "json.hpp"
#include "BaseHelper.h"

class BaseHelper::ImageFinder {
public:
	static std::string find(VH picture, VH fragment, int match_method = 0);
};

#endif//USE_OPENCV

#endif//__IMAGEFINDER_H__
