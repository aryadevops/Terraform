resource "aws_vpc_peering_connection" "peering" {

  count = is_peering_required ? 1 : 0  
  peer_vpc_id   = aws_vpc.main.id
  vpc_id        = var.requestor_vpc_id
  auto_accept   = true
  

  tags = merge(
    {
      Name = "${var.project_name}-${var.env}"
    },
    var.common_tags
  )
}

resource "aws_route" "default_route" {

    count = is_peering_required ? 1 : 0
    route_table_id = var.default_route_table_id
    destination_cidr_block = var.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.peering[0].id
  
}
resource "aws_route" "public_peering" {

    count = is_peering_required ? 1 : 0
    route_table_id = aws_route.public.id
    destination_cidr_block = var.default_vpc_cidr
    vpc_peering_connection_id = aws_vpc_peering_connection.peering[0].id
  
}
resource "aws_route" "private_peering" {

    count = is_peering_required ? 1 : 0
    route_table_id = aws_route.private.id
    destination_cidr_block = var.default_vpc_cidr
    vpc_peering_connection_id = aws_vpc_peering_connection.peering[0].id
  
}

resource "aws_route" "database_peering" {

    count = is_peering_required ? 1 : 0
    route_table_id = aws_route.database.id
    destination_cidr_block = var.default_vpc_cidr
    vpc_peering_connection_id = aws_vpc_peering_connection.peering[0].id
  
}