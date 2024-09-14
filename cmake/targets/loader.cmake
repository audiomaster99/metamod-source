# Metamod:Source
# Copyright (C) 2003-2024 AlliedModders LLC and authors
# Licensed under the GPLv3 license. See LICENSE file in the project root for details.

if(NOT METAMOD_DIR)
	message(FATAL_ERROR "METAMOD_DIR is empty")
endif()

if(NOT SOURCESDK_DIR)
	message(FATAL_ERROR "SOURCESDK_DIR is empty")
endif()

set(METAMOD_LOADER_SOURCE_DIRS
	${METAMOD_LOADER_SOURCE_DIRS}

	${METAMOD_LOADER_DIR}/gamedll.cpp
	${METAMOD_LOADER_DIR}/loader.cpp
	${METAMOD_LOADER_DIR}/serverplugin.cpp
	${METAMOD_LOADER_DIR}/utility.cpp
)

set(METAMOD_LOADER_COMPILE_DEFINITIONS
	${METAMOD_LOADER_COMPILE_DEFINITIONS}

	LIB_PREFIX="${CMAKE_SHARED_LIBRARY_PREFIX}"
	LIB_SUFFIX="${CMAKE_SHARED_LIBRARY_SUFFIX}"
)
