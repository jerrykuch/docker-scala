# Docker Scala Container for UW BIGDATA Certificate Program

A lightweight, ready-to-use Docker container with Scala, SBT, and
GraalVM for students in the University of Washington BIGDATA
certificate program.

## Overview

This Docker container provides a complete Scala development
environment without requiring local installation of Scala, SBT, or
Java. It's specifically designed for coursework in the UW BIGDATA
certificate program, offering a consistent development environment
across different operating systems.

## Features

- **Scala & SBT**: Pre-installed and ready to use
- **GraalVM**: Community Edition 21.3.0 with Java 17
- **Cross-platform**: Works on Windows, macOS, and Linux
- **No local setup**: No need to install Scala, SBT, or Java on your machine
- **Volume mounting**: Your code stays on your local machine

## Prerequisites

- [Docker](https://docs.docker.com/get-docker/) installed on your system
- Basic familiarity with command line/terminal

## Quick Start

1. **Clone this repository:**
   ```bash
   git clone https://github.com/jerrykuch/docker-scala.git
   cd docker-scala
   ```

2. **Build the Docker image:**
   ```bash
   docker build -t uw-scala .
   ```

3. **Run the container:**
   ```bash
   docker run -it --rm -v $(pwd):/workspace uw-scala
   ```

## Usage Examples

### Starting a New Scala Project

```bash
# Run the container with your project directory mounted
docker run -it --rm -v /path/to/your/project:/workspace uw-scala

# Inside the container, create a new Scala project
sbt new scala/scala-seed.g8
```

### Working with Existing Projects

```bash
# Navigate to your project directory
cd /path/to/your/scala/project

# Run the container with your project mounted
docker run -it --rm -v $(pwd):/workspace uw-scala

# Inside the container, you can now use SBT commands
sbt compile
sbt run
sbt test
```

### Common SBT Commands

Once inside the container, you can use these SBT commands:

```bash
sbt compile          # Compile your Scala code
sbt run              # Run your application
sbt test             # Run tests
sbt clean            # Clean build artifacts
sbt package          # Create a JAR file
sbt console          # Start Scala REPL
```

## For UW BIGDATA Students

This container includes everything you need for Scala-based assignments in the BIGDATA certificate program:

- **Spark-ready**: Compatible with Apache Spark development
- **Big Data tools**: GraalVM provides performance optimizations for data processing
- **Consistent environment**: Same setup across all student machines
- **No conflicts**: Isolated from your local Java/Scala installations

### Recommended Workflow

1. Clone your assignment repository to your local machine
2. Navigate to the assignment directory
3. Run this Docker container with your assignment directory mounted
4. Complete your work using the Scala/SBT tools inside the container
5. Your code changes are automatically saved to your local machine

## Container Details

- **Base Image**: `hseeberger/scala-sbt:graalvm-ce-21.3.0-java17_1.6.2_3.1.1`
- **Java Version**: OpenJDK 17
- **GraalVM Version**: Community Edition 21.3.0
- **Working Directory**: `/workspace`
- **Default Shell**: Bash

## Troubleshooting

### Permission Issues (Linux/macOS)
If you encounter permission issues with mounted volumes:
```bash
docker run -it --rm -v $(pwd):/workspace -u $(id -u):$(id -g) uw-scala
```

### Windows Path Issues
On Windows, use forward slashes or PowerShell:
```powershell
docker run -it --rm -v ${PWD}:/workspace uw-scala
```

### Container Won't Start
Ensure Docker is running and you have sufficient disk space. Try:
```bash
docker system prune  # Clean up unused containers/images
```

## Contributing

This container is maintained for the UW BIGDATA certificate
program. If you encounter issues or have suggestions for improvements,
please open an issue or submit a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Support

For issues related to:
- **Container setup**: Open an issue in this repository
- **Course assignments**: Contact your instructor or TA
- **Docker installation**: See [Docker's official documentation](https://docs.docker.com/)

---
