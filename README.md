# Hello API
## Dependencies
- Go version 1.22
## Setup

### Install Go 
`sudo make setup`

### Upgrade Go 
`sudo make install-go`

## 🛠️ Building the Application
To build the app locally, run: `make build`

This will:
- Compile the code into a binary called `api`.
- Store the binary in the root directory.

## 📦 Continuous Integration (CI) Pipeline
This project uses **GitHub Actions** to automate the build process on every push to the `main` branch.

### Key Steps in the Pipeline:
1. **Set up Go:**  
   Uses `actions/setup-go@v2` to configure Go environment (v1.18 or higher).
2. **Check out code:**  
   Downloads the latest code from the repository.
3. **Build the application:**  
   Runs `make build` to compile the Go code into a binary called `api`.
4. **Organize artifacts:**  
   Copies the built binary to an `artifacts` directory.
5. **Upload artifacts:**  
   Saves the binary as an artifact on GitHub for download.

### Trigger
- The pipeline runs on every push to the `main` branch.

## 📦 Artifacts
- The compiled binary (`api`) is uploaded as an artifact to GitHub Actions.
- You can download it directly from the GitHub Actions page after a successful build.

## 🚀 TODO
- **MacOS Support:**  
  A TODO exists in the Makefile to add MacOS support for installing Go. Contributions are welcome!

## Release Milestones
### V0 (1 day)
- [ ] Onboarding Documentation
- [ ] Simple API response (hello world!)
- [ ] Unit tests
- [ ] Running somewhere other than the dev machine
### V1 (7 days)
- [ ] Create translation endpoint
- [ ] Store translations in short-term storage
- [ ] Call existing service for translation
- [ ] Move towards long-term storage