#ifndef PARAMETERS_H_
#define PARAMETERS_H_

#include "ap_int.h"
#include "ap_fixed.h"

#include "nnet_utils/nnet_helpers.h"
//hls-fpga-machine-learning insert includes
#include "nnet_utils/nnet_activation.h"
#include "nnet_utils/nnet_activation_stream.h"
#include "nnet_utils/nnet_conv2d.h"
#include "nnet_utils/nnet_conv2d_stream.h"
#include "nnet_utils/nnet_image.h"
#include "nnet_utils/nnet_image_stream.h"
#include "nnet_utils/nnet_padding.h"
#include "nnet_utils/nnet_padding_stream.h"
#include "nnet_utils/nnet_pooling.h"
#include "nnet_utils/nnet_pooling_stream.h"
 
//hls-fpga-machine-learning insert weights
#include "weights/w2.h"
#include "weights/b2.h"
#include "weights/w5.h"
#include "weights/b5.h"
#include "weights/w8.h"
#include "weights/b8.h"
#include "weights/w11.h"
#include "weights/b11.h"
#include "weights/w14.h"
#include "weights/b14.h"
#include "weights/w17.h"
#include "weights/b17.h"
#include "weights/w20.h"
#include "weights/b20.h"

//hls-fpga-machine-learning insert layer-config
// zp2d_conv2d_147
struct config22 : nnet::padding2d_config {
    static const unsigned in_height = N_INPUT_1_1;
    static const unsigned in_width = N_INPUT_2_1;
    static const unsigned n_chan = N_INPUT_3_1;
    static const unsigned out_height = OUT_HEIGHT_22;
    static const unsigned out_width = OUT_WIDTH_22;
    static const unsigned pad_top = 1;
    static const unsigned pad_bottom = 1;
    static const unsigned pad_left = 1;
    static const unsigned pad_right = 1;
};

// conv2d_147
struct config2_mult : nnet::dense_config {
    static const unsigned n_in = 9;
    static const unsigned n_out = 8;
    static const unsigned reuse_factor = 9;
    static const unsigned strategy = nnet::resource;
    typedef ap_fixed<32,16> accum_t;
    typedef model_default_t bias_t;
    typedef model_default_t weight_t;
    template<class x_T, class y_T, class res_T>
    using product = nnet::product::mult<x_T, y_T, res_T>;
};

struct config2 : nnet::conv2d_config {
    static const unsigned pad_top = 0;
    static const unsigned pad_bottom = 0;
    static const unsigned pad_left = 0;
    static const unsigned pad_right = 0;
    static const unsigned in_height = OUT_HEIGHT_22;
    static const unsigned in_width = OUT_WIDTH_22;
    static const unsigned n_chan = N_CHAN_22;
    static const unsigned filt_height = 3;
    static const unsigned filt_width = 3;
    static const unsigned kernel_size = filt_height * filt_width;
    static const unsigned n_filt = N_FILT_2;
    static const unsigned stride_height = 1;
    static const unsigned stride_width = 1;
    static const unsigned out_height = OUT_HEIGHT_2;
    static const unsigned out_width = OUT_WIDTH_2;
    static const unsigned reuse_factor = 9;
    static const unsigned n_zeros = 0;
    static const bool store_weights_in_bram = false;
    static const unsigned strategy = nnet::resource;
    static const nnet::conv_implementation implementation = nnet::conv_implementation::linebuffer;
    static const unsigned min_height = 5;
    static const unsigned min_width = 5;
    static const ap_uint<filt_height * filt_width> pixels[min_height * min_width];
    typedef ap_fixed<32,16> accum_t;
    typedef model_default_t bias_t;
    typedef model_default_t weight_t;
    typedef config2_mult mult_config;
};
const ap_uint<config2::filt_height * config2::filt_width> config2::pixels[] = {1,3,7,6,4,9,27,63,54,36,73,219,511,438,292,72,216,504,432,288,64,192,448,384,256};

// conv2d_147_relu
struct relu_config3 : nnet::activ_config {
    static const unsigned n_in = OUT_HEIGHT_2*OUT_WIDTH_2*N_FILT_2;
    static const unsigned table_size = 1024;
    static const unsigned io_type = nnet::io_stream;
    static const unsigned reuse_factor = 64;
    typedef ap_fixed<18,8> table_t;
    //typedef ap_fixed<32,16> table_t;
};

// max_pooling2d_63
struct config4 : nnet::pooling2d_config {
    static const unsigned in_height = OUT_HEIGHT_2;
    static const unsigned in_width = OUT_WIDTH_2;
    static const unsigned n_filt = N_FILT_4;
    static const unsigned stride_height = 2;
    static const unsigned stride_width = 2;
    static const unsigned pool_height = 2;
    static const unsigned pool_width = 2;

    static const unsigned filt_height = 2;
    static const unsigned filt_width = 2;
    static const unsigned n_chan = N_FILT_4;

    static const unsigned out_height = OUT_HEIGHT_4;
    static const unsigned out_width = OUT_WIDTH_4;
    static const unsigned pad_top = 0;
    static const unsigned pad_bottom = 0;
    static const unsigned pad_left = 0;
    static const unsigned pad_right = 0;
    static const nnet::Pool_Op pool_op = nnet::Max;
    static const nnet::conv_implementation implementation = nnet::conv_implementation::linebuffer;
    static const unsigned reuse = 64;
    typedef ap_fixed<32,16> accum_t;
};

// zp2d_conv2d_148
struct config23 : nnet::padding2d_config {
    static const unsigned in_height = OUT_HEIGHT_4;
    static const unsigned in_width = OUT_WIDTH_4;
    static const unsigned n_chan = N_FILT_4;
    static const unsigned out_height = OUT_HEIGHT_23;
    static const unsigned out_width = OUT_WIDTH_23;
    static const unsigned pad_top = 1;
    static const unsigned pad_bottom = 1;
    static const unsigned pad_left = 1;
    static const unsigned pad_right = 1;
};

// conv2d_148
struct config5_mult : nnet::dense_config {
    static const unsigned n_in = 72;
    static const unsigned n_out = 4;
    static const unsigned reuse_factor = 72;
    static const unsigned strategy = nnet::resource;
    typedef ap_fixed<32,16> accum_t;
    typedef model_default_t bias_t;
    typedef model_default_t weight_t;
    template<class x_T, class y_T, class res_T>
    using product = nnet::product::mult<x_T, y_T, res_T>;
};

struct config5 : nnet::conv2d_config {
    static const unsigned pad_top = 0;
    static const unsigned pad_bottom = 0;
    static const unsigned pad_left = 0;
    static const unsigned pad_right = 0;
    static const unsigned in_height = OUT_HEIGHT_23;
    static const unsigned in_width = OUT_WIDTH_23;
    static const unsigned n_chan = N_CHAN_23;
    static const unsigned filt_height = 3;
    static const unsigned filt_width = 3;
    static const unsigned kernel_size = filt_height * filt_width;
    static const unsigned n_filt = N_FILT_5;
    static const unsigned stride_height = 1;
    static const unsigned stride_width = 1;
    static const unsigned out_height = OUT_HEIGHT_5;
    static const unsigned out_width = OUT_WIDTH_5;
    static const unsigned reuse_factor = 72;
    static const unsigned n_zeros = 0;
    static const bool store_weights_in_bram = false;
    static const unsigned strategy = nnet::resource;
    static const nnet::conv_implementation implementation = nnet::conv_implementation::linebuffer;
    static const unsigned min_height = 5;
    static const unsigned min_width = 5;
    static const ap_uint<filt_height * filt_width> pixels[min_height * min_width];
    typedef ap_fixed<32,16> accum_t;
    typedef model_default_t bias_t;
    typedef model_default_t weight_t;
    typedef config5_mult mult_config;
};
const ap_uint<config5::filt_height * config5::filt_width> config5::pixels[] = {1,3,7,6,4,9,27,63,54,36,73,219,511,438,292,72,216,504,432,288,64,192,448,384,256};

// conv2d_148_relu
struct relu_config6 : nnet::activ_config {
    static const unsigned n_in = OUT_HEIGHT_5*OUT_WIDTH_5*N_FILT_5;
    static const unsigned table_size = 1024;
    static const unsigned io_type = nnet::io_stream;
    static const unsigned reuse_factor = 64;
    typedef ap_fixed<18,8> table_t;
    //typedef ap_fixed<32,16> table_t;
};

// max_pooling2d_64
struct config7 : nnet::pooling2d_config {
    static const unsigned in_height = OUT_HEIGHT_5;
    static const unsigned in_width = OUT_WIDTH_5;
    static const unsigned n_filt = N_FILT_7;
    static const unsigned stride_height = 2;
    static const unsigned stride_width = 2;
    static const unsigned pool_height = 2;
    static const unsigned pool_width = 2;

    static const unsigned filt_height = 2;
    static const unsigned filt_width = 2;
    static const unsigned n_chan = N_FILT_7;

    static const unsigned out_height = OUT_HEIGHT_7;
    static const unsigned out_width = OUT_WIDTH_7;
    static const unsigned pad_top = 0;
    static const unsigned pad_bottom = 0;
    static const unsigned pad_left = 0;
    static const unsigned pad_right = 0;
    static const nnet::Pool_Op pool_op = nnet::Max;
    static const nnet::conv_implementation implementation = nnet::conv_implementation::linebuffer;
    static const unsigned reuse = 64;
    typedef ap_fixed<32,16> accum_t;
};

// zp2d_conv2d_149
struct config24 : nnet::padding2d_config {
    static const unsigned in_height = OUT_HEIGHT_7;
    static const unsigned in_width = OUT_WIDTH_7;
    static const unsigned n_chan = N_FILT_7;
    static const unsigned out_height = OUT_HEIGHT_24;
    static const unsigned out_width = OUT_WIDTH_24;
    static const unsigned pad_top = 1;
    static const unsigned pad_bottom = 1;
    static const unsigned pad_left = 1;
    static const unsigned pad_right = 1;
};

// conv2d_149
struct config8_mult : nnet::dense_config {
    static const unsigned n_in = 36;
    static const unsigned n_out = 4;
    static const unsigned reuse_factor = 36;
    static const unsigned strategy = nnet::resource;
    typedef ap_fixed<32,16> accum_t;
    typedef model_default_t bias_t;
    typedef model_default_t weight_t;
    template<class x_T, class y_T, class res_T>
    using product = nnet::product::mult<x_T, y_T, res_T>;
};

struct config8 : nnet::conv2d_config {
    static const unsigned pad_top = 0;
    static const unsigned pad_bottom = 0;
    static const unsigned pad_left = 0;
    static const unsigned pad_right = 0;
    static const unsigned in_height = OUT_HEIGHT_24;
    static const unsigned in_width = OUT_WIDTH_24;
    static const unsigned n_chan = N_CHAN_24;
    static const unsigned filt_height = 3;
    static const unsigned filt_width = 3;
    static const unsigned kernel_size = filt_height * filt_width;
    static const unsigned n_filt = N_FILT_8;
    static const unsigned stride_height = 1;
    static const unsigned stride_width = 1;
    static const unsigned out_height = OUT_HEIGHT_8;
    static const unsigned out_width = OUT_WIDTH_8;
    static const unsigned reuse_factor = 36;
    static const unsigned n_zeros = 0;
    static const bool store_weights_in_bram = false;
    static const unsigned strategy = nnet::resource;
    static const nnet::conv_implementation implementation = nnet::conv_implementation::linebuffer;
    static const unsigned min_height = 5;
    static const unsigned min_width = 5;
    static const ap_uint<filt_height * filt_width> pixels[min_height * min_width];
    typedef ap_fixed<32,16> accum_t;
    typedef model_default_t bias_t;
    typedef model_default_t weight_t;
    typedef config8_mult mult_config;
};
const ap_uint<config8::filt_height * config8::filt_width> config8::pixels[] = {1,3,7,6,4,9,27,63,54,36,73,219,511,438,292,72,216,504,432,288,64,192,448,384,256};

// conv2d_149_relu
struct relu_config9 : nnet::activ_config {
    static const unsigned n_in = OUT_HEIGHT_8*OUT_WIDTH_8*N_FILT_8;
    static const unsigned table_size = 1024;
    static const unsigned io_type = nnet::io_stream;
    static const unsigned reuse_factor = 64;
    typedef ap_fixed<18,8> table_t;
    //typedef ap_fixed<32,16> table_t;
};

// max_pooling2d_65
struct config10 : nnet::pooling2d_config {
    static const unsigned in_height = OUT_HEIGHT_8;
    static const unsigned in_width = OUT_WIDTH_8;
    static const unsigned n_filt = N_FILT_10;
    static const unsigned stride_height = 2;
    static const unsigned stride_width = 2;
    static const unsigned pool_height = 2;
    static const unsigned pool_width = 2;

    static const unsigned filt_height = 2;
    static const unsigned filt_width = 2;
    static const unsigned n_chan = N_FILT_10;

    static const unsigned out_height = OUT_HEIGHT_10;
    static const unsigned out_width = OUT_WIDTH_10;
    static const unsigned pad_top = 0;
    static const unsigned pad_bottom = 0;
    static const unsigned pad_left = 0;
    static const unsigned pad_right = 0;
    static const nnet::Pool_Op pool_op = nnet::Max;
    static const nnet::conv_implementation implementation = nnet::conv_implementation::linebuffer;
    static const unsigned reuse = 64;
    typedef ap_fixed<32,16> accum_t;
};

// zp2d_conv2d_150
struct config25 : nnet::padding2d_config {
    static const unsigned in_height = OUT_HEIGHT_10;
    static const unsigned in_width = OUT_WIDTH_10;
    static const unsigned n_chan = N_FILT_10;
    static const unsigned out_height = OUT_HEIGHT_25;
    static const unsigned out_width = OUT_WIDTH_25;
    static const unsigned pad_top = 1;
    static const unsigned pad_bottom = 1;
    static const unsigned pad_left = 1;
    static const unsigned pad_right = 1;
};

// conv2d_150
struct config11_mult : nnet::dense_config {
    static const unsigned n_in = 36;
    static const unsigned n_out = 4;
    static const unsigned reuse_factor = 36;
    static const unsigned strategy = nnet::resource;
    typedef ap_fixed<32,16> accum_t;
    typedef model_default_t bias_t;
    typedef model_default_t weight_t;
    template<class x_T, class y_T, class res_T>
    using product = nnet::product::mult<x_T, y_T, res_T>;
};

struct config11 : nnet::conv2d_config {
    static const unsigned pad_top = 0;
    static const unsigned pad_bottom = 0;
    static const unsigned pad_left = 0;
    static const unsigned pad_right = 0;
    static const unsigned in_height = OUT_HEIGHT_25;
    static const unsigned in_width = OUT_WIDTH_25;
    static const unsigned n_chan = N_CHAN_25;
    static const unsigned filt_height = 3;
    static const unsigned filt_width = 3;
    static const unsigned kernel_size = filt_height * filt_width;
    static const unsigned n_filt = N_FILT_11;
    static const unsigned stride_height = 1;
    static const unsigned stride_width = 1;
    static const unsigned out_height = OUT_HEIGHT_11;
    static const unsigned out_width = OUT_WIDTH_11;
    static const unsigned reuse_factor = 36;
    static const unsigned n_zeros = 0;
    static const bool store_weights_in_bram = false;
    static const unsigned strategy = nnet::resource;
    static const nnet::conv_implementation implementation = nnet::conv_implementation::linebuffer;
    static const unsigned min_height = 5;
    static const unsigned min_width = 5;
    static const ap_uint<filt_height * filt_width> pixels[min_height * min_width];
    typedef ap_fixed<32,16> accum_t;
    typedef model_default_t bias_t;
    typedef model_default_t weight_t;
    typedef config11_mult mult_config;
};
const ap_uint<config11::filt_height * config11::filt_width> config11::pixels[] = {1,3,7,6,4,9,27,63,54,36,73,219,511,438,292,72,216,504,432,288,64,192,448,384,256};

// conv2d_150_relu
struct relu_config12 : nnet::activ_config {
    static const unsigned n_in = OUT_HEIGHT_11*OUT_WIDTH_11*N_FILT_11;
    static const unsigned table_size = 1024;
    static const unsigned io_type = nnet::io_stream;
    static const unsigned reuse_factor = 64;
    typedef ap_fixed<18,8> table_t;
    //typedef ap_fixed<32,16> table_t;
};

// up_sampling2d_63
struct config13 : nnet::resize_config {
    static const unsigned height = 4;
    static const unsigned width = 4;
    static const unsigned n_chan = 4;
    static const unsigned new_height = 8;
    static const unsigned new_width = 8;
};

// zp2d_conv2d_151
struct config26 : nnet::padding2d_config {
    static const unsigned in_height = OUT_HEIGHT_13;
    static const unsigned in_width = OUT_WIDTH_13;
    static const unsigned n_chan = N_CHAN_13;
    static const unsigned out_height = OUT_HEIGHT_26;
    static const unsigned out_width = OUT_WIDTH_26;
    static const unsigned pad_top = 1;
    static const unsigned pad_bottom = 1;
    static const unsigned pad_left = 1;
    static const unsigned pad_right = 1;
};

// conv2d_151
struct config14_mult : nnet::dense_config {
    static const unsigned n_in = 36;
    static const unsigned n_out = 4;
    static const unsigned reuse_factor = 36;
    static const unsigned strategy = nnet::resource;
    typedef ap_fixed<32,16> accum_t;
    typedef model_default_t bias_t;
    typedef model_default_t weight_t;
    template<class x_T, class y_T, class res_T>
    using product = nnet::product::mult<x_T, y_T, res_T>;
};

struct config14 : nnet::conv2d_config {
    static const unsigned pad_top = 0;
    static const unsigned pad_bottom = 0;
    static const unsigned pad_left = 0;
    static const unsigned pad_right = 0;
    static const unsigned in_height = OUT_HEIGHT_26;
    static const unsigned in_width = OUT_WIDTH_26;
    static const unsigned n_chan = N_CHAN_26;
    static const unsigned filt_height = 3;
    static const unsigned filt_width = 3;
    static const unsigned kernel_size = filt_height * filt_width;
    static const unsigned n_filt = N_FILT_14;
    static const unsigned stride_height = 1;
    static const unsigned stride_width = 1;
    static const unsigned out_height = OUT_HEIGHT_14;
    static const unsigned out_width = OUT_WIDTH_14;
    static const unsigned reuse_factor = 36;
    static const unsigned n_zeros = 0;
    static const bool store_weights_in_bram = false;
    static const unsigned strategy = nnet::resource;
    static const nnet::conv_implementation implementation = nnet::conv_implementation::linebuffer;
    static const unsigned min_height = 5;
    static const unsigned min_width = 5;
    static const ap_uint<filt_height * filt_width> pixels[min_height * min_width];
    typedef ap_fixed<32,16> accum_t;
    typedef model_default_t bias_t;
    typedef model_default_t weight_t;
    typedef config14_mult mult_config;
};
const ap_uint<config14::filt_height * config14::filt_width> config14::pixels[] = {1,3,7,6,4,9,27,63,54,36,73,219,511,438,292,72,216,504,432,288,64,192,448,384,256};

// conv2d_151_relu
struct relu_config15 : nnet::activ_config {
    static const unsigned n_in = OUT_HEIGHT_14*OUT_WIDTH_14*N_FILT_14;
    static const unsigned table_size = 1024;
    static const unsigned io_type = nnet::io_stream;
    static const unsigned reuse_factor = 64;
    typedef ap_fixed<18,8> table_t;
    //typedef ap_fixed<32,16> table_t;
};

// up_sampling2d_64
struct config16 : nnet::resize_config {
    static const unsigned height = 8;
    static const unsigned width = 8;
    static const unsigned n_chan = 4;
    static const unsigned new_height = 16;
    static const unsigned new_width = 16;
};

// zp2d_conv2d_152
struct config27 : nnet::padding2d_config {
    static const unsigned in_height = OUT_HEIGHT_16;
    static const unsigned in_width = OUT_WIDTH_16;
    static const unsigned n_chan = N_CHAN_16;
    static const unsigned out_height = OUT_HEIGHT_27;
    static const unsigned out_width = OUT_WIDTH_27;
    static const unsigned pad_top = 1;
    static const unsigned pad_bottom = 1;
    static const unsigned pad_left = 1;
    static const unsigned pad_right = 1;
};

// conv2d_152
struct config17_mult : nnet::dense_config {
    static const unsigned n_in = 36;
    static const unsigned n_out = 8;
    static const unsigned reuse_factor = 36;
    static const unsigned strategy = nnet::resource;
    typedef ap_fixed<32,16> accum_t;
    typedef model_default_t bias_t;
    typedef model_default_t weight_t;
    template<class x_T, class y_T, class res_T>
    using product = nnet::product::mult<x_T, y_T, res_T>;
};

struct config17 : nnet::conv2d_config {
    static const unsigned pad_top = 0;
    static const unsigned pad_bottom = 0;
    static const unsigned pad_left = 0;
    static const unsigned pad_right = 0;
    static const unsigned in_height = OUT_HEIGHT_27;
    static const unsigned in_width = OUT_WIDTH_27;
    static const unsigned n_chan = N_CHAN_27;
    static const unsigned filt_height = 3;
    static const unsigned filt_width = 3;
    static const unsigned kernel_size = filt_height * filt_width;
    static const unsigned n_filt = N_FILT_17;
    static const unsigned stride_height = 1;
    static const unsigned stride_width = 1;
    static const unsigned out_height = OUT_HEIGHT_17;
    static const unsigned out_width = OUT_WIDTH_17;
    static const unsigned reuse_factor = 36;
    static const unsigned n_zeros = 0;
    static const bool store_weights_in_bram = false;
    static const unsigned strategy = nnet::resource;
    static const nnet::conv_implementation implementation = nnet::conv_implementation::linebuffer;
    static const unsigned min_height = 5;
    static const unsigned min_width = 5;
    static const ap_uint<filt_height * filt_width> pixels[min_height * min_width];
    typedef ap_fixed<32,16> accum_t;
    typedef model_default_t bias_t;
    typedef model_default_t weight_t;
    typedef config17_mult mult_config;
};
const ap_uint<config17::filt_height * config17::filt_width> config17::pixels[] = {1,3,7,6,4,9,27,63,54,36,73,219,511,438,292,72,216,504,432,288,64,192,448,384,256};

// conv2d_152_relu
struct relu_config18 : nnet::activ_config {
    static const unsigned n_in = OUT_HEIGHT_17*OUT_WIDTH_17*N_FILT_17;
    static const unsigned table_size = 1024;
    static const unsigned io_type = nnet::io_stream;
    static const unsigned reuse_factor = 64;
    typedef ap_fixed<18,8> table_t;
    //typedef ap_fixed<32,16> table_t;
};

// up_sampling2d_65
struct config19 : nnet::resize_config {
    static const unsigned height = 16;
    static const unsigned width = 16;
    static const unsigned n_chan = 8;
    static const unsigned new_height = 32;
    static const unsigned new_width = 32;
};

// zp2d_conv2d_153
struct config28 : nnet::padding2d_config {
    static const unsigned in_height = OUT_HEIGHT_19;
    static const unsigned in_width = OUT_WIDTH_19;
    static const unsigned n_chan = N_CHAN_19;
    static const unsigned out_height = OUT_HEIGHT_28;
    static const unsigned out_width = OUT_WIDTH_28;
    static const unsigned pad_top = 1;
    static const unsigned pad_bottom = 1;
    static const unsigned pad_left = 1;
    static const unsigned pad_right = 1;
};

// conv2d_153
struct config20_mult : nnet::dense_config {
    static const unsigned n_in = 72;
    static const unsigned n_out = 1;
    static const unsigned reuse_factor = 72;
    static const unsigned strategy = nnet::resource;
    typedef ap_fixed<32,16> accum_t;
    typedef model_default_t bias_t;
    typedef model_default_t weight_t;
    template<class x_T, class y_T, class res_T>
    using product = nnet::product::mult<x_T, y_T, res_T>;
};

struct config20 : nnet::conv2d_config {
    static const unsigned pad_top = 0;
    static const unsigned pad_bottom = 0;
    static const unsigned pad_left = 0;
    static const unsigned pad_right = 0;
    static const unsigned in_height = OUT_HEIGHT_28;
    static const unsigned in_width = OUT_WIDTH_28;
    static const unsigned n_chan = N_CHAN_28;
    static const unsigned filt_height = 3;
    static const unsigned filt_width = 3;
    static const unsigned kernel_size = filt_height * filt_width;
    static const unsigned n_filt = N_FILT_20;
    static const unsigned stride_height = 1;
    static const unsigned stride_width = 1;
    static const unsigned out_height = OUT_HEIGHT_20;
    static const unsigned out_width = OUT_WIDTH_20;
    static const unsigned reuse_factor = 72;
    static const unsigned n_zeros = 0;
    static const bool store_weights_in_bram = false;
    static const unsigned strategy = nnet::resource;
    static const nnet::conv_implementation implementation = nnet::conv_implementation::linebuffer;
    static const unsigned min_height = 5;
    static const unsigned min_width = 5;
    static const ap_uint<filt_height * filt_width> pixels[min_height * min_width];
    typedef ap_fixed<32,16> accum_t;
    typedef model_default_t bias_t;
    typedef model_default_t weight_t;
    typedef config20_mult mult_config;
};
const ap_uint<config20::filt_height * config20::filt_width> config20::pixels[] = {1,3,7,6,4,9,27,63,54,36,73,219,511,438,292,72,216,504,432,288,64,192,448,384,256};

// conv2d_153_relu
struct relu_config21 : nnet::activ_config {
    static const unsigned n_in = OUT_HEIGHT_20*OUT_WIDTH_20*N_FILT_20;
    static const unsigned table_size = 1024;
    static const unsigned io_type = nnet::io_stream;
    static const unsigned reuse_factor = 64;
    typedef ap_fixed<18,8> table_t;
    //typedef ap_fixed<32,16> table_t;
};


#endif
