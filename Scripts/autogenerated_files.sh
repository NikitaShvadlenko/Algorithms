#!/bin/sh

GENERATED_DIR="./Algorithms/Generated"
eval mkdir -p $GENERATED_DIR
eval touch $GENERATED_DIR/Strings+Generated.swift
eval touch $GENERATED_DIR/XCAssets+Generated.swift

swiftgen config run --config swiftgen.yml

MODULES_FOLDER="./Algorithms/Modules"

for MODULE in "${SOURCERY_MODULES[@]}"; do
	MODULE_DIR="${MODULES_FOLDER}/${MODULE}"
	sourcery -v --config "${MODULE_DIR}/sourcery.yml"
done
