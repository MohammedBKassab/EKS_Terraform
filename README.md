# Terraform EKS Cluster with VPC

This Terraform project provisions an **Amazon EKS (Elastic Kubernetes Service) cluster** along with a **VPC (Virtual Private Cloud)** using a modularized Terraform approach. The project consists of two modules:

- **VPC Module**: Provisions networking infrastructure (VPC, subnets, IGW, RouteTable Association).
- **EKS Module**: Provisions the EKS cluster, node groups, and associated resources.

## Project Structure

The project is structured as follows:

```
terraform-eks-vpc/
├── main.tf
├── variables.tf
├── outputs.tf
├── README.md
├── modules/
│   ├── vpc/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   ├── eks/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
```

## Usage

### Clone the Repository

```bash
git clone https://github.com/your-repo/terraform-eks-vpc.git
cd terraform-eks-vpc
```

### Initialize Terraform

```bash
terraform init
```

### Review the Configuration

Update the `terraform.tfvars` file with your desired configuration. Example:

```hcl
region                = "us-west-2"
cluster_name          = "my-eks-cluster"
vpc_cidr             = "10.0.0.0/16"
public_subnets       = ["10.0.1.0/24"]
private_subnets      = ["10.0.2.0/24"]
node_group_instance_type = "t2.medium"
node_group_desired_size  = 2
```

### Plan and Apply

```bash
terraform plan
terraform apply
```

### Access the EKS Cluster

After the cluster is created, configure `kubectl` to access the cluster:

```bash
aws eks --region <region> update-kubeconfig --name <cluster_name>
kubectl get nodes
```

## Inputs

| Variable                 | Description                         | Default Value |
|--------------------------|-------------------------------------|--------------|
| `region`                | AWS region to deploy resources     | `us-east-1`  |
| `vpc_cidr`              | CIDR block for the VPC             | `10.0.0.0/16` |
| `public_subnets`        | List of public subnets             | `["10.0.1.0/24"]` |
| `private_subnets`       | List of private subnets            | `["10.0.2.0/24"]` |
| `cluster_name`          | Name of the EKS cluster            | `my-eks-cluster` |
| `node_group_instance_type` | Instance type for worker nodes   | `t2.medium` |
| `node_group_desired_size` | Desired number of worker nodes    | `2` |

## Outputs

| Output Name             | Description                          |
|-------------------------|--------------------------------------|
| `vpc_id`               | ID of the created VPC               |
| `public_subnet_ids`    | IDs of the public subnets           |
| `private_subnet_ids`   | IDs of the private subnets          |
| `cluster_name`         | Name of the EKS cluster             |
| `cluster_endpoint`     | Endpoint for the EKS cluster        |
| `kubeconfig`          | Kubeconfig file for the EKS cluster |

## Contributing

Contributions are welcome! Please open an issue or submit a pull request for any improvements or bug fixes.

## License

This project is licensed under the **MIT License**. See the `LICENSE` file for details.

