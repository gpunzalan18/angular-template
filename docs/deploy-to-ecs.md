# Deploy to ECS

## 1) Configure AWS Crendentials

- Create an IAM user with programmatic acces and attach necessaru policies to the user.
- Download user credentials, which contains the Access Key ID and the Secret Access Key.
- Update repository setting add these credentials.
  - AWS_ACCESS_KEY_ID
  - AWS_SECRET_ACCESS_KEY

## 2) Create a new repository in ECR on AWS Console

- Create a new private repository in ECR and keep track of the URI.
- Github Actions will build the docker image and push it to ECR. This is what will be deployed to ECS.

## 3) Create a new ECS cluster with a container and a service on AWS Console

- Create an ECS cluster with a service and a t2.micro container.
- Without these, automated build with Github Actions will fail.

## 4) Define task definition for ECS.

- The definition file will be used to deploy to ECS.
- See [Deploy Task Defintion](https://github.com/marketplace/actions/amazon-ecs-deploy-task-definition-action-for-github-actions) on Github Actions.
