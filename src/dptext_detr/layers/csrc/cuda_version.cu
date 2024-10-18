#include <cuda_runtime_api.h>

namespace dptext_detr {
int get_cudart_version() {
  return CUDART_VERSION;
}
} // namespace dptext_detr
