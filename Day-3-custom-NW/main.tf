resource "aws_vpc" "name" {
    cidr_block = "10.0.0.0/24"
    tags = {
      Name = "custom-vpc"
    } 
}

resource "aws_subnet" "subnet-1" {
    vpc_id = aws_vpc.name.id
    cidr_block = "10.0.0.0/24"
    tags = {
      Name = "custom-subnet-1"
    }
}
resource "aws_internet_gateway" "igw" {
    vpc_id = aws_vpc.name.id
    tags = {
      Name = "custom-igw"
 }

resource "aws_route_table" "rt"
    vpc_id = aws_vpc.name.id
    tags = {
      Name = "custom-rt"
 }
