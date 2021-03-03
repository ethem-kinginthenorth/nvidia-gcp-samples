# Copyright 2021 NVIDIA Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


# Choose from "small_ssm_nq", "t5.1.1.xl_ssm_nq", "t5.1.1.xxl_ssm_nq" please check the colab for latest models.

MODEL="small_ssm_nq"

python -m t5.models.mesh_transformer_main \
  --module_import="t5_cbqa.tasks" \
  --model_dir="gs://t5-data/pretrained_models/cbqa/${MODEL}" \
  --use_model_api \
  --mode="export_predict" \
  --export_dir="model_b16" \
  --batch_size=16