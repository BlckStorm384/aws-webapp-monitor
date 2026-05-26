# Architecture Notes

## AWS Region
US East (N. Virginia) - us-east-1

## EC2 Instance
- Instance ID: i-09d61ec8bf9cbbbac
- Instance type: t3.micro
- AMI: Amazon Linux 2023
- Security Group: launch-wizard-1
- IAM Role: EC2MonitorRole
- Public IP: 34.201.209.182

## CloudWatch
- Agent installed on EC2
- Namespace: MyWebApp
- Metrics: CPU, memory, disk
- Log Group: MyWebApp-AccessLogs

## CloudWatch Alarms
- HighCPU-Alert: CPUUtilization > 80% for 2 datapoints
- InstanceDown-Alert: StatusCheckFailed >= 1

## SNS
- Topic: WebAppAlerts
- Protocol: Email
- Status: Confirmed

## S3
- Bucket: webapp-monitor-logs-jbk
- Purpose: Application log storage

## Auto Scaling
- Group: WebApp-AutoScaling
- Launch Template: WebApp-Template
- Min: 1, Desired: 1, Max: 2
- Health check: EC2
- Grace period: 120 seconds

## IAM Role - EC2MonitorRole
- CloudWatchAgentServerPolicy
- CloudWatchLogsFullAccess
- AmazonS3FullAccess