#!/bin/bash
set -e
cd /home/dorma10/mutation-analysis/projects
git clone https://github.com/google/error-prone.git error-prone
cd /home/dorma10/mutation-analysis/projects/error-prone
git fetch --tags
latestTag=$(git describe --tags `git rev-list --tags --max-count=1`)
git checkout $latestTag
mvn clean install -DskipTests
mvn test -Dmaven.test.failure.ignore=true
cd ..
git clone https://github.com/hcoles/highwheel.git highwheel
cd /home/dorma10/mutation-analysis/projects/highwheel
git fetch --tags
latestTag=$(git describe --tags `git rev-list --tags --max-count=1`)
git checkout $latestTag
mvn clean install -DskipTests
mvn test -Dmaven.test.failure.ignore=true
cd ..
cd ..
