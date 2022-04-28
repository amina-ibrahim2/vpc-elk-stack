resource "aws_subnet""public-elk" {
    vpc_id = aws_vpc.main.id
    cidr_block = "192.168.1.0/24"
    availability_zone = "us-east-2"
    map_public_ip_on_launch = true

    tags = {
        Name = "talent-academy-elk-public-a"
    }
}

resource "aws_subnet""private-elk" {
    vpc_id = aws_vpc.main.id
    cidr_block = "192.168.2.0/24"
    availability_zone = "us-east-2"

    tags = {
        Name = "talent-academy-elk-private-a"
    }
}
