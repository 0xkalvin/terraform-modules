# RDS

It creates an SQS instance

## Usage

```terraform
module "my_queue" {
  source                      = "github.com/0xkalvin/terraform-modules//sqs"
  name                        = "my-queue-${terraform.workspace}"
  fifo_queue                  = true
  content_based_deduplication = true
}
```
