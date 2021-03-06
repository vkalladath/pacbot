resource "aws_batch_job_queue" "pacman_job_queue" {
  count = "${length(var.job_queue_name)}"
  name  = "${var.job_queue_name[count.index]}"
  state = "ENABLED"
  priority = "${var.priority_value[count.index]}"
  compute_environments = ["${aws_batch_compute_environment.pacman-compute-environment.arn}"]
}
