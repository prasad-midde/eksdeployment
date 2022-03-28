NODE_ROLE_NAME="eksctl-cicd-demo-nodegroup-ng-1-NodeInstanceRole-14OVIDKESE9SI"

deploy: deploy-fluent-bit deploy-falco

deploy-fluent-bit:
	-aws iam create-policy --policy-name EKS-CloudWatchLogs --policy-document file://./fluent-bit/aws/iam_role_policy.json
	aws iam attach-role-policy --role-name $(NODE_ROLE_NAME) --policy-arn `aws iam list-policies | jq -r '.[][] | select(.PolicyName == "EKS-CloudWatchLogs") | .Arn'`
	kubectl apply -f fluent-bit/kubernetes/

deploy-falco:
        
	helm repo update
	helm install falco --set falco.jsonOutput=true falcosecurity/falco

clean: clean-fluent-bit clean-falco

clean-fluent-bit:
	kubectl delete -f fluent-bit/kubernetes/

clean-falco:
	helm del --purge falco
