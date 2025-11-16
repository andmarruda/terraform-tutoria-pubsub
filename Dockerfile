FROM hashicorp/terraform

ARG PROJECT_ID
ARG REGION

ENV TF_VAR_project_id=${PROJECT_ID}
ENV TF_VAR_region=${REGION}