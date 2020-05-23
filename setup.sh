#!/bin/bash

cp -av ./profile ~/.profile

if ! grep -q "source ~/.profile" ~/.bashrc; then
	echo "source ~/profile" >> ~/.bashrc
fi
