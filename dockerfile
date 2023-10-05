# Use the official Golang base image
FROM golang:1.20 

# Set the working directory inside the container
WORKDIR /app

# Copy the go.mod and readline.go files to the working directory
COPY go.mod .
COPY readLine.go .

# Copy the main folder to the working directory
COPY main ./main

# Copy any additional TXT files to the working directory
COPY ./main/*.txt ./

# Change the working directory to the main folder
WORKDIR /app/main

# Build the Go application
RUN go build server.go

# Expose the desired port
EXPOSE 8081

# Start the application
CMD ["./server"]