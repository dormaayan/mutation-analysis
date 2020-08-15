#!/bin/bash
set -e
cd /home/dorma10/mutation-analysis/projects
git clone https://github.com/apache/commons-cli.git commons-cli
cd /home/dorma10/mutation-analysis/projects/commons-cli
git fetch --tags
latestTag=$(git describe --tags `git rev-list --tags --max-count=1`)
git checkout $latestTag
mvn clean install -DskipTests
mvn test -Dmaven.test.failure.ignore=true
cd ..
git clone https://github.com/apache/commons-codec.git commons-codec
cd /home/dorma10/mutation-analysis/projects/commons-codec
git fetch --tags
latestTag=$(git describe --tags `git rev-list --tags --max-count=1`)
git checkout $latestTag
mvn clean install -DskipTests
mvn test -Dmaven.test.failure.ignore=true
cd ..
git clone https://github.com/FasterXML/jackson-core.git jackson-core
cd /home/dorma10/mutation-analysis/projects/jackson-core
git fetch --tags
latestTag=$(git describe --tags `git rev-list --tags --max-count=1`)
git checkout $latestTag
mvn clean install -DskipTests
mvn test -Dmaven.test.failure.ignore=true
cd ..
git clone https://github.com/FasterXML/jackson-databind.git jackson-databind
cd /home/dorma10/mutation-analysis/projects/jackson-databind
git fetch --tags
latestTag=$(git describe --tags `git rev-list --tags --max-count=1`)
git checkout $latestTag
mvn clean install -DskipTests
mvn test -Dmaven.test.failure.ignore=true
cd ..
git clone https://github.com/apache/commons-fileupload.git commons-fileupload
cd /home/dorma10/mutation-analysis/projects/commons-fileupload
git fetch --tags
latestTag=$(git describe --tags `git rev-list --tags --max-count=1`)
git checkout $latestTag
mvn clean install -DskipTests
mvn test -Dmaven.test.failure.ignore=true
cd ..
git clone https://github.com/apache/commons-imaging.git commons-imaging
cd /home/dorma10/mutation-analysis/projects/commons-imaging
git fetch --tags
latestTag=$(git describe --tags `git rev-list --tags --max-count=1`)
git checkout $latestTag
mvn clean install -DskipTests
mvn test -Dmaven.test.failure.ignore=true
cd ..
git clone https://github.com/apache/commons-text.git commons-text
cd /home/dorma10/mutation-analysis/projects/commons-text
git fetch --tags
latestTag=$(git describe --tags `git rev-list --tags --max-count=1`)
git checkout $latestTag
mvn clean install -DskipTests
mvn test -Dmaven.test.failure.ignore=true
cd ..
git clone https://github.com/apache/commons-configuration.git commons-configuration
cd /home/dorma10/mutation-analysis/projects/commons-configuration
git fetch --tags
latestTag=$(git describe --tags `git rev-list --tags --max-count=1`)
git checkout $latestTag
mvn clean install -DskipTests
mvn test -Dmaven.test.failure.ignore=true
cd ..
git clone https://github.com/JodaOrg/joda-time.git joda-time
cd /home/dorma10/mutation-analysis/projects/joda-time
git fetch --tags
latestTag=$(git describe --tags `git rev-list --tags --max-count=1`)
git checkout $latestTag
mvn clean install -DskipTests
mvn test -Dmaven.test.failure.ignore=true
cd ..
cd ..
