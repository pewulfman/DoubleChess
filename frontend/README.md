# frontend

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

The main code file is located in lib/main.dart

## Architecture

This project follow a standard 4-layers architecture :

- Presentation : Contains widget and components i.e. function that takes data as input and display them with no processing
- Application : Mostly pipeline and data processing
- Domain : Contain the business logic i.e. critical processing, conditions checking, etc..
- Service : Handle low level communication with the server
