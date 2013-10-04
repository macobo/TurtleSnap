from setuptools import setup, find_packages

setup(
    name = 'TurtleSnap',
    packages=find_packages(),
    package_data={'': [' creategif.sh']},
    version='0.0.1',
    description='Turtle snapshot maker',
    author='Karl-Aksel Puulmann',
    author_email='oxymaccy@gmail.com',
)