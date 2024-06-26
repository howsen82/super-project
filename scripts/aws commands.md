####################################################################################
##### AWS CLI REFERENCE -- https://docs.aws.amazon.com/cli/latest/reference/ #######
####################################################################################

Commands used are as follows:

### 1. To get instance id with the name filter

```
aws ec2 describe-instances --region 'us-east-1' --filters 'Name=tag:Name,Values=Jenkins*' --query 'Reservations[*].Instances[*].[InstanceId]' --output text", returnStdout: true).trim()
```

#### 2. To get volumeID of the instances

```
aws ec2 describe-instances --region 'us-east-1' --instance-ids '${id}' --query 'Reservations[*].Instances[*].BlockDeviceMappings[0].Ebs.VolumeId' --output text", returnStdout: true).trim()
```

### 3. To get the snapshotID

```
aws ec2 create-snapshot --region 'us-east-1' --volume-id '${volumeId}' --query 'SnapshotId' --output text", returnStdout: true).trim()
```