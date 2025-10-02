# Use the official hseeberger Scala + SBT base image
FROM hseeberger/scala-sbt:graalvm-ce-21.3.0-java17_1.6.2_3.1.1

# Ensure bash is available (it already should be)
SHELL ["/bin/bash", "-c"]

# Set custom bash prompt: username@hostname:current_directory# (for root) or $ (for non-root)
RUN echo 'export PS1="\u@\h:\w\\$ "' >> /root/.bashrc

# Set the default entrypoint to bash
ENTRYPOINT ["/bin/bash"]

# Optional: set working directory inside the container
WORKDIR /workspace

# By default, start interactive shell
CMD ["-i"]

