docker-login:
	aws ecr get-login-password --region eu-west-1 --profile innovorder-lab | docker login --username AWS --password-stdin 920081703738.dkr.ecr.eu-west-1.amazonaws.com
docker-build:
	docker build . -t 920081703738.dkr.ecr.eu-west-1.amazonaws.com/demo-aws-app-runner
docker-run:
	docker run -p 3000:3000 -it 920081703738.dkr.ecr.eu-west-1.amazonaws.com/demo-aws-app-runner
docker-push:
	docker push 920081703738.dkr.ecr.eu-west-1.amazonaws.com/demo-aws-app-runner
