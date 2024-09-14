# Metamod:Source
# Copyright (C) 2003-2024 AlliedModders LLC and authors
# Licensed under the GPLv3 license. See LICENSE file in the project root for details.

if(NOT METAMOD_DIR)
	message(FATAL_ERROR "METAMOD_DIR is empty")
endif()

if(NOT SOURCESDK_DIR)
	message(FATAL_ERROR "SOURCESDK_DIR is empty")
endif()

set(METAMOD_CORE_SOURCE_DIRS
	${METAMOD_CORE_SOURCE_DIRS}

	${METAMOD_CORE_SOURCEHOOK_DIR}/sourcehook_hookmangen.cpp
	${METAMOD_CORE_SOURCEHOOK_DIR}/sourcehook_impl_cvfnptr.cpp
	${METAMOD_CORE_SOURCEHOOK_DIR}/sourcehook_impl_cproto.cpp
	${METAMOD_CORE_SOURCEHOOK_DIR}/sourcehook_impl_chookmaninfo.cpp
	${METAMOD_CORE_SOURCEHOOK_DIR}/sourcehook_impl_chookidman.cpp
	${METAMOD_CORE_SOURCEHOOK_DIR}/sourcehook.cpp
	${METAMOD_CORE_PROVIDER_DIR}/provider_base.cpp
	${METAMOD_CORE_DIR}/gamedll_bridge.cpp
	${METAMOD_CORE_DIR}/metamod_console.cpp
	${METAMOD_CORE_DIR}/metamod_oslink.cpp
	${METAMOD_CORE_DIR}/metamod_plugins.cpp
	${METAMOD_CORE_DIR}/metamod_util.cpp
	${METAMOD_CORE_DIR}/metamod.cpp
)

if(METAMOD_SOURCE2)
	list(APPEND
		METAMOD_CORE_SOURCE_DIRS

		${METAMOD_CORE_PROVIDER_SOURCE2_DIR}/provider_source2.cpp
	)
else()
	list(APPEND
		METAMOD_CORE_SOURCE_DIRS

		${METAMOD_CORE_PROVIDER_SOURCE_DIR}/provider_source_console.cpp
		${METAMOD_CORE_PROVIDER_SOURCE_DIR}/provider_source.cpp
		${METAMOD_CORE_DIR}/vsp_bridge.cpp
	)
endif()
