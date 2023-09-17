#ifndef _HAL_GPIO_H_
#define _HAL_GPIO_H_

// Includes
#include "sysTypes.h"

// Definitions
#define HAL_GPIO_PIN(name, port, bit) \
  INLINE void    HAL_GPIO_##name##_set(void)        { LAT##port     |=  (1 << bit); } \
  INLINE void    HAL_GPIO_##name##_clr(void)        { LAT##port     &= ~(1 << bit); } \
  INLINE void    HAL_GPIO_##name##_toggle(void)     { LAT##port     ^=  (1 << bit); } \
  INLINE void    HAL_GPIO_##name##_out(void)        { TRIS##port    &= ~(1 << bit); } \
  INLINE void    HAL_GPIO_##name##_in(void)         { TRIS##port    |=  (1 << bit); } \
  INLINE void    HAL_GPIO_##name##_pullup(void)     { IOCPU##port   |=  (1 << bit); } \
  INLINE uint8_t HAL_GPIO_##name##_read(void)       { return (PORT##port    & (1 << bit)) != 0; } \
  INLINE uint8_t HAL_GPIO_##name##_state(void)      { return (LAT##port     & (1 << bit)) != 0; }

#endif
