#ifndef DEFINES_H_
#define DEFINES_H_

#include "ap_int.h"
#include "ap_fixed.h"
#include "nnet_utils/nnet_types.h"
#include <cstddef>
#include <cstdio>

//hls-fpga-machine-learning insert numbers
#define N_INPUT_1_1 32
#define N_INPUT_2_1 32
#define N_INPUT_3_1 1
#define OUT_HEIGHT_22 34
#define OUT_WIDTH_22 34
#define N_CHAN_22 1
#define OUT_HEIGHT_2 32
#define OUT_WIDTH_2 32
#define N_FILT_2 8
#define OUT_HEIGHT_4 16
#define OUT_WIDTH_4 16
#define N_FILT_4 8
#define OUT_HEIGHT_23 18
#define OUT_WIDTH_23 18
#define N_CHAN_23 8
#define OUT_HEIGHT_5 16
#define OUT_WIDTH_5 16
#define N_FILT_5 4
#define OUT_HEIGHT_7 8
#define OUT_WIDTH_7 8
#define N_FILT_7 4
#define OUT_HEIGHT_24 10
#define OUT_WIDTH_24 10
#define N_CHAN_24 4
#define OUT_HEIGHT_8 8
#define OUT_WIDTH_8 8
#define N_FILT_8 4
#define OUT_HEIGHT_10 4
#define OUT_WIDTH_10 4
#define N_FILT_10 4
#define OUT_HEIGHT_25 6
#define OUT_WIDTH_25 6
#define N_CHAN_25 4
#define OUT_HEIGHT_11 4
#define OUT_WIDTH_11 4
#define N_FILT_11 4
#define OUT_HEIGHT_13 8
#define OUT_WIDTH_13 8
#define N_CHAN_13 4
#define OUT_HEIGHT_26 10
#define OUT_WIDTH_26 10
#define N_CHAN_26 4
#define OUT_HEIGHT_14 8
#define OUT_WIDTH_14 8
#define N_FILT_14 4
#define OUT_HEIGHT_16 16
#define OUT_WIDTH_16 16
#define N_CHAN_16 4
#define OUT_HEIGHT_27 18
#define OUT_WIDTH_27 18
#define N_CHAN_27 4
#define OUT_HEIGHT_17 16
#define OUT_WIDTH_17 16
#define N_FILT_17 8
#define OUT_HEIGHT_19 32
#define OUT_WIDTH_19 32
#define N_CHAN_19 8
#define OUT_HEIGHT_28 34
#define OUT_WIDTH_28 34
#define N_CHAN_28 8
#define OUT_HEIGHT_20 32
#define OUT_WIDTH_20 32
#define N_FILT_20 1

//hls-fpga-machine-learning insert layer-precision
typedef ap_fixed<32,16> model_default_t;
typedef nnet::array<ap_fixed<32,16>, 1*1> input_t;
typedef nnet::array<ap_fixed<32,16>, 1*1> layer22_t;
typedef nnet::array<ap_fixed<32,16>, 8*1> layer2_t;
typedef nnet::array<ap_fixed<32,16>, 8*1> layer3_t;
typedef nnet::array<ap_fixed<32,16>, 8*1> layer4_t;
typedef nnet::array<ap_fixed<32,16>, 8*1> layer23_t;
typedef nnet::array<ap_fixed<32,16>, 4*1> layer5_t;
typedef nnet::array<ap_fixed<32,16>, 4*1> layer6_t;
typedef nnet::array<ap_fixed<32,16>, 4*1> layer7_t;
typedef nnet::array<ap_fixed<32,16>, 4*1> layer24_t;
typedef nnet::array<ap_fixed<32,16>, 4*1> layer8_t;
typedef nnet::array<ap_fixed<32,16>, 4*1> layer9_t;
typedef nnet::array<ap_fixed<32,16>, 4*1> layer10_t;
typedef nnet::array<ap_fixed<32,16>, 4*1> layer25_t;
typedef nnet::array<ap_fixed<32,16>, 4*1> layer11_t;
typedef nnet::array<ap_fixed<32,16>, 4*1> layer12_t;
typedef nnet::array<ap_fixed<32,16>, 4*1> layer13_t;
typedef nnet::array<ap_fixed<32,16>, 4*1> layer26_t;
typedef nnet::array<ap_fixed<32,16>, 4*1> layer14_t;
typedef nnet::array<ap_fixed<32,16>, 4*1> layer15_t;
typedef nnet::array<ap_fixed<32,16>, 4*1> layer16_t;
typedef nnet::array<ap_fixed<32,16>, 4*1> layer27_t;
typedef nnet::array<ap_fixed<32,16>, 8*1> layer17_t;
typedef nnet::array<ap_fixed<32,16>, 8*1> layer18_t;
typedef nnet::array<ap_fixed<32,16>, 8*1> layer19_t;
typedef nnet::array<ap_fixed<32,16>, 8*1> layer28_t;
typedef nnet::array<ap_fixed<32,16>, 1*1> layer20_t;
typedef nnet::array<ap_fixed<32,16>, 1*1> result_t;

#endif
