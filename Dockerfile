# Use the official hseeberger Scala + SBT base image
FROM hseeberger/scala-sbt:graalvm-ce-21.3.0-java17_1.6.2_3.1.1

# Ensure bash is available (it already should be)
SHELL ["/bin/bash", "-c"]

# Set the default entrypoint to bash
ENTRYPOINT ["/bin/bash"]

# Optional: set working directory inside the container
WORKDIR /workspace

# By default, start interactive shell
CMD ["-i"]

