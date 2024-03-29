VPCID="vpc-0419802ed12eec58a"
account_id=215691912540
#EC2 instances to be added as target group
instance=["i-0ec4d4521d56ade9b","i-0859a07abf9002a20"]
SUBNET_ID=["subnet-0b86a94123ccf1094","subnet-04eff055558594bd7"]
# existing_security_group_ids=["sg-0fa3f7060ad66d3be"]
port = ["80","443"]
protocol=["TCP","TCP"]  
preserve_client_ip=true
cross_zone_load_balancing=true
s3_bucket_for_logs="egalbdemo2023"  
#True for Internal Load Balancer and False for External Load Balancer
internal_load_balancer=true
certificate_id="5c4a4330-e55d-47e2-8654-f7f836a1be3e"
stick_session=true


nlb_tags = {
      TicketReference            = "CHG0050760"
      DNSEntry                   = "csdasd"
      DesignDocumentLink         = "acbv"
}


##Tags to be passed as variables. These would be appended to the pre defined tags in variables.tf
Environment="Dev"
ApplicationFunctionality = "Test"
ApplicationName="Test"
ApplicationOwner="abc@hotmail.com"
ApplicationTeam="Team1"
BusinessOwner="abc@gmail.com"
BusinessTower="abc@gmail.com"
ServiceCriticality="Medium"


target_group = {
    healthy_threshold   =  3
    interval            = 10
    path                = "/"
    port                = "traffic-port"
    protocol            = "TCP"
    timeout             = 3
    unhealthy_threshold = 2
    }

##Name of the ALB . Naming Covention alb-app-name-environment-int/ext. Int for Internal LB
#and ext for External
Name_NLB = "nlb-app-name-environment-int  "

##Name of the Target Group.Naming Covention alb-tg-app-name-environment-int/ext.Int 
#for Internal LB and ext for External
Name_Target_Group = "nlb-tg-app-name-environment-int"
