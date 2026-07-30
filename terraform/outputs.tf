output "public_ip" {
  description = "Public IP of the web server"
  value       = aws_instance.web.public_ip
}
output "app_url" {
  description = "URL of the deployed app"
  value       = "http://${aws_instance.web.public_ip}/health"
}
