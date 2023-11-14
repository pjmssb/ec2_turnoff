# AWS Lambda EC2 Shutdown Function

## Project Overview

This project involves developing an AWS Lambda function in Python to automatically shut down EC2 instances. The function is triggered by AWS CloudWatch at a specific time each day and targets instances tagged for automatic shutdown. This project is part of a workshop series focusing on Agile development, Hexagonal Architecture, and serverless computing with AWS Lambda.

## Key Features

- **Automated Shutdown**: Lambda function to automatically shut down tagged EC2 instances.
- **Scheduled Trigger**: Utilizes AWS CloudWatch for daily triggers.
- **Logging**: Records shutdown events with details like UUID, timestamp, instance name, and associated tags.

## Technologies Used

- **Python**: Primary programming language for Lambda function.
- **AWS Lambda**: Serverless computing service to run the function.
- **AWS CloudWatch**: Used for scheduling and triggering the Lambda function.
- **GitHub**: Source control and collaboration.
- **Confluence**: Documentation and Agile project management.
- **Hexagonal Architecture**: Software design pattern for building loosely coupled applications.

## Setup and Deployment

### Prerequisites

- AWS account with access to Lambda and CloudWatch
- Python development environment2. Navigate to the project directory:

- Git for version control

### Installation

1. Clone the repository: git clone <repository-url>
2. Navigate to the project directory: cd aws-lambda-ec2-shutdown
3. [Additional installation steps]

### Deployment

1. Package the Python script for Lambda.
2. Upload the package to AWS Lambda.
3. Set up the CloudWatch event rule to trigger the Lambda function.
4. [Additional deployment steps]

## Usage

[Instructions on how to use the Lambda function, including any configuration steps]

## Contributing

We welcome contributions to this project. Please follow these steps to contribute:

1. Fork the repository.
2. Create a new feature branch: `git checkout -b new-feature`
3. Commit your changes.
4. Push to the branch: `git push origin new-feature`
5. Submit a pull request.

## License

[Specify the license under which the project is released]

## Contact

For any queries regarding this project, please contact:

- [Your Name]
- [Your Contact Information]

---

This project is part of a workshop series focusing on mastering the Software Development Life Cycle using Agile methodologies, Hexagonal Architecture, and serverless computing with AWS Lambda.

