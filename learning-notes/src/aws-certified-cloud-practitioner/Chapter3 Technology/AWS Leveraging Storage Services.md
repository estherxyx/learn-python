# Storage Services 

## S3(Simple Storage Service)
- What is S3?   
    - S3 is an object storage service for the cloud that is highly available.
    - Objects (or files) are stored in buckets (or directories).
    - Essentially unlimited storage that can hold millions of objects per bucket. 
    - Objects can be public or private.
    - You can upload objects via the console, the CLI, or programmatically from within code using SDKs.
    - S3 is a regional service but has a global namespace. 
- Data Accessbility: 
    - Durability: Durability is important so your objects are never lost or compromised. Amazon S3 Standard is designed for 99.999999999% (11 9’s) of durability.
    - Availability: Availability is important so you can access your data quickly when you need it. Amazon S3 Standard is designed for 99.99% availability. 
- S3 Storage Classes: 
    - S3 standard: frequently accessed data 
    - S3 intelligent-Tiering: Data with unknown or changing access pattern 
    - S3 Standard-Infrequently Access(IA): long-lived data, Infrequent accessed, millisecond access when needed 
    - S3 One one-Infrequently Access: re-creatable data, Infrequenctly accessed with millisecond access, availability and durability not essential
    - S3 Glacier: Long-term backups, cheaper storage options 
    - S3 Glacier Deep Archive: Long-term data archival accessed once or twice a year, retaining data for regulatory compliance requirements. 
    - S3 Outposts: Data that needs to be kept local, demanding application performance needs.
- Use Cases: 
    - Static websites: Deploy static websites to S3 and use CloudFront for global distribution.
    - Data archive: Archive data using Amazon Glacier as a storage option for Amazon S3.
    - Analytics systems: Store data in Amazon S3 for use with analytics services like Redshift and Athena.
    - Mobile applicaiton: Mobile application users can upload files to an Amazon S3 bucket.


## Additional Storage Services 
- EC2 Storage 
    - EC2 supports several storage options for your instances
- Elastic Block Store(EBS)
    - EBS is a storage device (called a volume) that can be attached to (or removed from) your instance.
    - Can only be attached to one instance in the same Availability Zone
    - recommended for: Quickly accessible data, Running a database on an instance, or Long-term data storage
- EC2 Instance Store 
    - An instance store is local storage that is physically attached to the host computer and cannot be removed.
    - Storage on disks physically attached to an instance
    - Storage is temporary since data loss occurs when the EC2 instance is stopped
    - recommended for: Temporary storage needs, Data replicated across multiple instances
- Elastic File System(EFS)
    - EFS is a serverless network file system for sharing files.
    - Only supports the Linux file system
    - More expensive than EBS
    - Accessible across different Availability Zones in the same Region
    - recommended for: Main directories for business-critical apps, Lift-and-shift existing enterprise apps
- Storage Gateway
    - Storage Gateway is a hybrid storage service.
    - Connect on-premises and cloud data and support hybird system. 
    - recommended for: Moving backups to the cloud,Reducing costs for hybrid cloud storage, or Low latency access to data. 
- AWS Backup
    - AWS Backup helps you manage data backups across multiple AWS services. 
    - Integrates with resources like EC2, EBS, EFS, and more
    - recommended for: Create a backup plan that includes frequency and retention

