
# Compute Services 
## EC2: Elastic Compute Cloud 
- What is EC2?
    - EC2 allows you to rent and manage virtual servers in the cloud. Servers are the physical compute hardware running in a data center. EC2 instances are the virtual servers running on these physical servers. Instances are not considered serverless.
- Example usage of EC2: to deloy a database or to deloy a web applicaiton 
- How to access EC2: 
    - through AWS Management Console, 
    - Secure Shell(ssh), 
    - EC2 Instance Connect, 
    - AWS Systems Manager(where you can manage your instances either via a web brower or the AWS CLI)
    - The most common way to access to Linux EC2 is through ssh: first need to generate a key which contains a privat key and a public key. When you connect ssh client on local laptop use the private and where connect to the EC2 instance use the public key.  
- Pricing: 
    <mark> - On-demand: A fixed price in which you are billed down to the second based in the instance tyoe. There is no contract, and you pay only for what you use. 
    <mark> - Spot: Spot instances let you take advantage of unused EC2 capacity. Your request is fulfilled only if capacity is available. (cheapest overall)
    <mark>- Reserved Instances(RIs): RIs allow you to commit to a specific instance tyoe in a particular Region for 1 to 3 years. (best option for predictiable amount, long-term usage)
   <mark> - Dedicated Hosts: Dedicated Hosts allow you to pay for a physical server that is fully dedicated to running your instances. 
    <mark>- Savings Plan: Savings Plan allows you to commit to comput useage(measured per hour) for 1 to 3 years.  
- Features: 
    - Elastic Load Balancing automatically distributes your incoming application traffic across multiple EC2 instances.
    - EC2 Auto Scaling adds or replaces EC2 instances automatically across AZs, based on need and changing demand.

## Lambda
- Lambda is a serverless compute service that lets you run code without managing servers.
- Lambda is a building block for many serverless applications. Allows: 
    - Real-time file processing
    - Sending email notifications
    - Backend business logic  
- Features: 
    - Supports popular programming languages like Java, Go, PowerShell, Node.js, C#, Python, and Ruby.
    - You author code using your favorite development environment or via the console.
    - Lambda can execute your code in response to events.
    - Lambda functions have a 15-minute timeout.
- Pricing: 
    - Compute time: Pay only for compute time used — there is no charge if your code is not running.
    - Request count: A request is counted each time it starts execution. Test invokes in the console count as well.
    - Always free: The free usage tier includes 1 million free 


## Additional Compute Services 
- AWS Fargate: Fargate is a serverless compute engine for containers.
- Amazon Lightsail: Lightsail allows you to quickly launch all the resources you need for small projects.
- AWS Outposts:Outposts allows you to run cloud services in your internal data center.
- AWS Batch:Batch allows you to process large workloads in smaller chunks (or batches).

