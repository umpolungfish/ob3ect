#!/usr/bin/env python3
"""Serpent-Rod Vessel — launch as module"""
import sys
from pathlib import Path
sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent))
from bin.serpent import main
sys.exit(main())
