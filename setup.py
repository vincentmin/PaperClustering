from setuptools import setup
import os

requirements_path = os.path.join(
    os.path.dirname(os.path.realpath(__file__)), "requirements.txt"
)

with open(requirements_path) as requirements_file:
    requirements = requirements_file.readlines()

setup(
    name="PaperClustering",
    version="0.1",
    description="Package for analyzing and extracting insight from a large collection of papers",
    author="Vincent Min",
    packages=["src"],
    install_requires=requirements,
)
