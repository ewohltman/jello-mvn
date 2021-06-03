
javaOpts=-classpath ./src/main/java
javacOpts=${javaOpts} -d target -h src/main/resources
gccOpts=-shared -I/usr/lib/jvm/java-8-openjdk-amd64/include -I/usr/lib/jvm/java-8-openjdk-amd64/include/linux

build:
	javac ${javacOpts} src/main/java/com/github/ewohltman/Leaky.java
	gcc ${gccOpts} -o src/main/resources/libJello.so src/main/resources/Leaky.c

run:
	LD_LIBRARY_PATH=./target java ${javaOpts} -cp target/jello-mvn-v0.0.1.jar com.github.ewohltman.Leaky
