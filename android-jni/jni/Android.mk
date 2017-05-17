LOCAL_PATH := $(call my-dir)

common_includes := \
	$(LOCAL_PATH)/lib \
	$(LOCAL_PATH)/lib/common \
	$(LOCAL_PATH)/lib/compress \
    $(LOCAL_PATH)/lib/decompress \
	$(LOCAL_PATH)/lib/dictBuilder \
	$(LOCAL_PATH)/lib/legacy \

include $(CLEAR_VARS)
LOCAL_MODULE := libzstd
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := \
	lib/common/entropy_common.c \
	lib/common/error_private.c \
	lib/common/fse_decompress.c \
	lib/common/pool.c \
	lib/common/threading.c \
	lib/common/xxhash.c \
	lib/common/zstd_common.c \
	lib/compress/fse_compress.c \
	lib/compress/huf_compress.c \
	lib/compress/zstd_compress.c \
	lib/compress/zstdmt_compress.c \
	lib/decompress/huf_decompress.c \
	lib/decompress/zstd_decompress.c \
	lib/dictBuilder/cover.c \
	lib/dictBuilder/divsufsort.c \
	lib/dictBuilder/zdict.c \
	lib/legacy/zstd_v04.c \
	lib/legacy/zstd_v05.c \
	lib/legacy/zstd_v06.c \
	lib/legacy/zstd_v07.c
LOCAL_C_INCLUDES := $(common_includes)
include $(BUILD_SHARED_LIBRARY)