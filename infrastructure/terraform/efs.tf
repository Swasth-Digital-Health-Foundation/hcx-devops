resource "aws_security_group_rule" "efs" {
  type              = "ingress"
  from_port         = 0
  to_port           = 2049
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  ipv6_cidr_blocks  = []
  security_group_id = aws_security_group.default_instances.id
}
