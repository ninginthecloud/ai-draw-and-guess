#!/bin/bash
ROOT_DIR="$(dirname $(dirname $0))"
PATH_PREFIX="https://huggingface.co/kuprel/min-dalle/resolve/main"

DALLE_MEGA_DIR="$ROOT_DIR/pretrained/dalle_mega"
mkdir -p "$DALLE_MEGA_DIR"
# wget "$PATH_PREFIX/config.json" -P "$DALLE_MEGA_DIR"
wget "$PATH_PREFIX/vocab.json" -P "$DALLE_MEGA_DIR"
wget "$PATH_PREFIX/merges.txt" -P "$DALLE_MEGA_DIR"
wget "$PATH_PREFIX/encoder.pt" -P "$DALLE_MEGA_DIR"
wget "$PATH_PREFIX/decoder.pt" -P "$DALLE_MEGA_DIR"
wget "$PATH_PREFIX/detoker.pt" -P "$DALLE_MEGA_DIR"

DALLE_MINI_DIR="$ROOT_DIR/pretrained/dalle_mini"
mkdir -p "$DALLE_MINI_DIR"
# wget "$PATH_PREFIX/config_mini.json" -O "$DALLE_MINI_DIR/config.json"
wget "$PATH_PREFIX/vocab_mini.json" -O "$DALLE_MINI_DIR/vocab.json"
wget "$PATH_PREFIX/merges_mini.txt" -O "$DALLE_MINI_DIR/merges.txt"
wget "$PATH_PREFIX/encoder_mini.pt" -O "$DALLE_MINI_DIR/encoder.pt"
wget "$PATH_PREFIX/decoder_mini.pt" -O "$DALLE_MINI_DIR/decoder.pt"
wget "$PATH_PREFIX/detoker.pt" -O "$DALLE_MINI_DIR/detoker.pt"