# TSE6156FinalProjectAPR
## Overview
This program is mainly focused on assessing the overfitting problem on APR tools working on Java programs. The Java developers could see the possibility of a certain APR tool, such as NOPOL and ARJA, overfitting their program using this framework, which takes different modules from the program and verifies the patches the APR tool generates. OpenJML will be used as the verifier of Java programs in this framework. And the testing examples and benchmark standards are from Defects4J and an open repository . The repository provides 537 buggy sample programs with written formal specifications which can be used on different APR tools. They cover a large number of functionalities normally seen in common Java programs. And these sample programs could be extended to be tested on more Java APR tools used in the repository. 
## Usage
### Prerequisites
Java 1.8

Defects4J

Nopol

SimFix

kGenProg

jKali

jMutRepair

ARJA

Cardumen

### Setup

1. Install all prerequisite for jenv of java 1.7

2. Install all prerequisite for Defects4J, configure with Perl files they provide

3. Install all needed APR tools, from the list above (not necessarily all of them)

4. Run the command in the root diretory, add the name of the APR tool needed as an argument. 
'''
bash ./setup.sh [$1] [$2] ...
'''

5. Run the command to use the framework, and include the needed aprtool name as arguments
'''
bash ./aprtools/lib/java/main.sh $program_dir $test_dir $verify_dir [$aprtool]
'''


## Directory Structure
|--REAMME.md

|--Assignment: Project Assignments

|----Project proposal

|----Revised Project Proposal

|----Progress Report

|----Final Report

|----Demo

|--src: source code for the main body of the framework

|--bin: compiled files

|--lib: JAR files

|--Programs

|----[Program Name]: tested sample program

|------[Bug Number]

|------......

|----......


|--Result

|----[Test Number]: Data for each execution 

|------[Program Name]

|--------[APR tool]: APR tool selected

|----------[Bug Number]

|------......

|----......


## Reference
### Dataset: 
https://github.com/Amirfarhad-Nilizadeh/BuggyJavaJML

### Paper: 
Durieux, Thomas, et al. "Empirical review of Java program repair tools: A large-scale experiment on 2,141 bugs and 23,551 repair attempts." Proceedings of the 2019 27th ACM Joint Meeting on European Software Engineering Conference and Symposium on the Foundations of Software Engineering. 2019. https://dl-acm-org.ezproxy.cul.columbia.edu/doi/10.1145/3338906.3338911

A. Nilizadeh, G. T. Leavens, X. -B. D. Le, C. S. Păsăreanu and D. R. Cok, "Exploring True Test Overfitting in Dynamic Automated Program Repair using Formal Methods," 2021 14th IEEE Conference on Software Testing, Verification and Validation (ICST), 2021, pp. 229-240, doi: 10.1109/ICST49551.2021.00033. https://ieeexplore-ieee-org.ezproxy.cul.columbia.edu/document/9438573

Y. Qin, S. Wang, K. Liu, X. Mao and T. F. Bissyandé, "On the Impact of Flaky Tests in Automated Program Repair," 2021 IEEE International Conference on Software Analysis, Evolution and Reengineering (SANER), 2021, pp. 295-306, doi: 10.1109/SANER50967.2021.00035. https://ieeexplore-ieee-org.ezproxy.cul.columbia.edu/abstract/document/9425948
