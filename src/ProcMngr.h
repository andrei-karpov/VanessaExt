#ifndef __PROCMNG_H__
#define __PROCMNG_H__

#include <types.h>
#include <string>
#include "IMemoryManager.h"

class ProcessManager {
public:
	static std::wstring GetProcessList(tVariant* paParams, const long lSizeArray);
	static std::wstring GetProcessInfo(tVariant* paParams, const long lSizeArray);
	static DWORD ProcessId();
};

#endif //__PROCMNG_H__
