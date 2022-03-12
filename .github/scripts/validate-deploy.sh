#!/usr/bin/env bash

EXPECTED_RWX_SC=$(cat variables.tf | grep "rwx_storage_class" | sed -E 's/.*default = "([^"]*)".*/\1/g')
EXPECTED_FILE_SC=$(cat variables.tf | grep "file_storage_class" | sed -E 's/.*default = "([^"]*)".*/\1/g')
EXPECTED_BLOCK_SC=$(cat variables.tf | grep "block_storage_class" | sed -E 's/.*default = "([^"]*)".*/\1/g')

ACTUAL_RWX_SC=$(cat .rwx_storage_class)
ACTUAL_FILE_SC=$(cat .file_storage_class)
ACTUAL_BLOCK_SC=$(cat .block_storage_class)

if [[ "${ACTUAL_RWX_SC}" != "${EXPECTED_RWX_SC}" ]]; then
  echo "RWX storage class is not expected value: expected=${EXPECTED_RWX_SC}, actual=${ACTUAL_RWX_SC}"
  exit 1
fi

if [[ "${ACTUAL_FILE_SC}" != "${EXPECTED_FILE_SC}" ]]; then
  echo "File storage class is not expected value: expected=${EXPECTED_FILE_SC}, actual=${ACTUAL_FILE_SC}"
  exit 1
fi

if [[ "${ACTUAL_BLOCK_SC}" != "${EXPECTED_BLOCK_SC}" ]]; then
  echo "Block storage class is not expected value: expected=${EXPECTED_BLOCK_SC}, actual=${ACTUAL_BLOCK_SC}"
  exit 1
fi
