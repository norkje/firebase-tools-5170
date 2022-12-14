# Firebase Tools #5170

## Usage

1. Run `docker build --build-arg FIREBASE_TOOLS_VERSION=11.6.0 -t firebase-tools-5179:11.6.0 .`
2. Run `docker run firebase-tools-5179:11.6.0`
3. Confirm that the emulator starts correctly
4. Run `docker build --build-arg FIREBASE_TOOLS_VERSION=11.18.0 -t firebase-tools-5179:11.18.0 .`
5. Run `docker run firebase-tools-5179:11.18.0`
6. Observe that the emulator fails to start
