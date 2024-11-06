# `mason_configs` Repository
This repository contains custom configuration files tailored for use with the [Mason](https://pub.dev/packages/mason) package. These configurations are designed to streamline and accelerate code generation, aligning with specific preferences to enhance personal workflow.

While these configurations reflect my unique setup, they may also be helpful for others looking to improve their code generation process with Mason. Feel free to explore and adapt them if they suit your needs.

# Clone Instructions
If you clone this repository directly into the root directory of your projects (with your projects as subdirectories of this root), Mason can be set up to use these configurations globally across all your projects. Alternatively, you can clone the repository in any location and set up Mason separately within each project directory.

This guide explains how to clone the mason_configs repository directly into the current directory without creating an extra top-level folder. It includes commands for both Windows and macOS/Linux users.

## For macOS and Linux Users
Open a terminal and run the following one-liner command:

```git init && \
git remote add origin https://github.com/mehrzut/mason_configs.git && \
git config core.sparseCheckout true && \
echo "/*" > .git/info/sparse-checkout && \
git pull origin master && \Ï
git config --unset core.sparseCheckout && \
rm .git/info/sparse-checkout
```


## For Windows Users
Open Command Prompt (or Git Bash, if installed).

Run the following command (use the echo syntax for Windows):

```git init && ^
git remote add origin https://github.com/mehrzut/mason_configs.git && ^
git config core.sparseCheckout true && ^
echo /* > .git/info/sparse-checkout && ^
git pull origin master && ^
git config --unset core.sparseCheckout && ^
del .git/info/sparse-checkout
```



