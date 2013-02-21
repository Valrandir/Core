#pragma once

#if !CoreTargetWin32 && !CoreTargetLinux
	#error No target defined.
#endif

#include "Types.hpp"

#include "System/System.hpp"
#include "System/Memory/Memory.hpp"
#include "System/Threading/Thread.hpp"
#include "System/Time/Time.hpp"

#include "System/Assert/Assert.hpp"
#include "DataStruct/Vector.hpp"
#include "String/String.hpp"
#include "System/Storage/File.hpp"
