FROM ubuntu:latest

# Set the working directory inside the container
WORKDIR /app

# Update package list
RUN apt update

# Install default JDK (if still needed for other tasks) and g++ for C++ compilation
RUN apt install -y default-jdk g++

# Copy the C++ file into the container
COPY test.cpp .

# Compile the C++ file
RUN g++ test.cpp -o test_program

# Set the command to run the compiled C++ program
CMD ["./test_program"]
