# Migration and Transfer 
A lot of companies are migrating to the cloud, and they need inexpensive, fast, and secure ways to move their on-premises data to AWS.

## Database Migration Service
- DMS helps you migrate databases to or within AWS.
- Migrate on-premises databases to AWS
- Continuous data replication 
- Supports homogeneous and heterogeneous migrations
- Virtually no downtime 
- Use cases: 
    - Oracle to Aurora MySQL: Migrate an on-premises Oracle database to Aurora MySQL. 
    - Oracle to Oracle: Migrate an on-premises Oracle database to Oracle on EC2. 
    - RDS Oracle to Aurora MySQL: Migrate an RDS Oracle database to Aurora MySQL. 

## Server Migration Service 
- SMS allows you to migrate on-premises servers to AWS. (You can actually migrate a group of servers.)
- Migrates on-premises servers to AWS
- Server saved as a new Amazon Machine Image (AMI)
- Use AMI to launch servers as EC2 instances 

## Amazon Snow Family 
![](AWS_Tech_Images/AWS_Snow_Family.png)
The Snow Family allows you to transfer large amounts of on-premises data to AWS using a physical device.(No transfer over the internet and it's more cost effective.)

- Snowscone 
    - Smallest member of data transport devices
    - 8 terabytes of usable storage
    - Offline shipping 
    - Online DataSync

- Snowball and Snowball Edge
    - Petabyte-scale data transport solution
    - transfer data in and out 
    - cheaper than internet transfer 
    - Snowball Edge supports EC2 and Lambda

- Snowmobile
    - Multi-petabyte or exabyte scale
    - Data loaded to S3 
    - Securely transported

## Amazon DataSync 
- DataSync allows for online data transfer from on-premises to AWS storage services like S3 or EFS
- Migrate data from on-premises to AWS 
- Copy data over Direct Connect or the internet
- Copy data between AWS storage services 
- Replicate data cross-Region or cross-account  