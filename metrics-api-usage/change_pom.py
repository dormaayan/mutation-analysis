import sys

pom = """<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="http://maven.apache.org/POM/4.0.0"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
    <modelVersion>4.0.0</modelVersion>

    <groupId>org.example</groupId>
    <artifactId>metrics-api-usage</artifactId>
    <version>1.0-SNAPSHOT</version>


    <properties>
        <maven.compiler.source>1.8</maven.compiler.source>
        <maven.compiler.target>1.8</maven.compiler.target>
        <kotlin.version>1.3.72</kotlin.version>
        <junit-jupiter.version>5.4.2</junit-jupiter.version>
        <java.version>1.8</java.version>
    </properties>

    <build>
        <plugins>
            <plugin>
                <artifactId>kotlin-maven-plugin</artifactId>
                <groupId>org.jetbrains.kotlin</groupId>
                <version>${kotlin.version}</version>
                <executions>
                    <execution>
                        <id>compile</id>
                        <goals>
                            <goal>compile</goal>
                        </goals>
                        <configuration>
                            <sourceDirs>
                                <sourceDir>${project.basedir}/src/main/kotlin</sourceDir>
                                <sourceDir>${project.basedir}/src/main/java</sourceDir>
                            </sourceDirs>
                        </configuration>
                    </execution>
                    <execution>
                        <id>test-compile</id>
                        <goals>
                            <goal>test-compile</goal>
                        </goals>
                        <configuration>
                            <sourceDirs>
                                <sourceDir>${project.basedir}/src/test/kotlin</sourceDir>
                                <sourceDir>${project.basedir}/src/test/java</sourceDir>
                            </sourceDirs>
                        </configuration>
                    </execution>
                </executions>
            </plugin>
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-compiler-plugin</artifactId>
                <version>3.1</version>
                <configuration>
                    <source>${java.version}</source>
                    <target>${java.version}</target>
                    <testSource>${java.version}</testSource>
                    <testTarget>${java.version}</testTarget>
                </configuration>
                <executions>
                    <execution>
                        <id>default-compile</id>
                        <phase>none</phase>
                    </execution>
                    <execution>
                        <id>default-testCompile</id>
                        <phase>none</phase>
                    </execution>
                    <execution>
                        <id>java-compile</id>
                        <phase>compile</phase>
                        <goals>
                            <goal>compile</goal>
                        </goals>
                    </execution>
                    <execution>
                        <id>java-test-compile</id>
                        <phase>test-compile</phase>
                        <goals>
                            <goal>testCompile</goal>
                        </goals>
                    </execution>
                </executions>
            </plugin>
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-install-plugin</artifactId>
                <version>3.0.0-M1</version>
                <configuration>
                    <groupId>it.unisa.quality</groupId>
                    <artifactId>it.unisa.quality</artifactId>
                    <version>1.0</version>
                    <packaging>jar</packaging>
                    <file>${project.basedir}/libs/it.unisa.quality-1.0.jar</file>
                    <generatePom>true</generatePom>
                </configuration>
                <executions>
                    <execution>
                        <id>install-jar-lib</id>
                        <goals>
                            <goal>install-file</goal>
                        </goals>
                        <phase>validate</phase>
                    </execution>
                </executions>
            </plugin>
            <plugin>
                <groupId>org.codehaus.mojo</groupId>
                <artifactId>exec-maven-plugin</artifactId>
                <version>3.0.0</version>
                <executions>
                    <execution>
                        <goals>
                            <goal>java</goal>
                        </goals>
                    </execution>
                </executions>
                <configuration>
                    <mainClass>it.unisa.quality.computation.RunnerKt</mainClass>
                    <arguments>
                        <argument>/home/dorma10/mutation-analysis/projects/%s/</argument>
                        <argument>/home/dorma10/mutation-analysis/projects/%s/</argument>
                        <argument>/home/dorma10/mutation-analysis/final-results/mutation/%s.csv</argument>
                    </arguments>
                </configuration>
            </plugin>
        </plugins>
    </build>

    <dependencies>
	 <dependency>
	    <groupId>raykernel.apps.readability</groupId>
	    <artifactId>raykernel.apps.readability</artifactId>
	    <version>1.0</version>
	    <scope>system</scope>
	    <systemPath>${project.basedir}/libs/raykernel.apps.readability.jar</systemPath>
	</dependency>
        <dependency>
            <groupId>org.jetbrains.kotlin</groupId>
            <artifactId>kotlin-stdlib-jdk8</artifactId>
            <version>${kotlin.version}</version>
        </dependency>
        <dependency>
            <groupId>org.jetbrains.kotlin</groupId>
            <artifactId>kotlin-test</artifactId>
            <version>${kotlin.version}</version>
            <scope>test</scope>
        </dependency>
        <dependency>
            <groupId>com.github.doyaaaaaken</groupId>
            <artifactId>kotlin-csv-jvm</artifactId>
            <version>0.7.3</version>
        </dependency>
        <dependency>
            <groupId>org.apache.maven.plugins</groupId>
            <artifactId>maven-install-plugin</artifactId>
            <version>3.0.0-M1</version>
        </dependency>
        <dependency>
            <groupId>it.unisa.quality</groupId>
            <artifactId>it.unisa.quality</artifactId>
            <version>1.0</version>
        </dependency>
    </dependencies>
</project>"""

def main(project_name):
    print(project_name)
    with open("pom.xml", "w") as text_file:
        text_file.write(pom % (project_name, project_name, project_name))

if __name__ == "__main__":
    main(sys.argv[1:][0])
