import boto3

def lambda_handler(event, context):
    
    dms = boto3.client('dms')

    response = dms.describe_replication_tasks()

    for task in response['ReplicationTasks']:
        if task1['ReplicationTaskIdentifier'] == "pgflx-broadridgcm-dms-task":
            arn = task['ReplicationTaskArn']
            break
        if task['ReplicationTaskIdentifier'] == "pgflx-icmacm-dms-task":
            arn2 = task['ReplicationTaskArn']
            break
        if task['ReplicationTaskIdentifier'] == "pgflx-icmacm-dms-task":
            arn3 = task['ReplicationTaskArn']
            break
        if task['ReplicationTaskIdentifier'] == "pgflx-voyacm-dms-task":
            arn4 = task['ReplicationTaskArn']
            break
        
    
    migration_task_arns = [arn1,arn2,arn3,arn4]
    
    for migration_task_arn in migration_task_arns:
        result = dms.start_replication_task(
            ReplicationTaskArn=migration_task_arn,
            StartReplicationTaskType='reload-target'
        )

    return "Migration tasks started successfully"
