# AutoEncoder_hls4ml
an autoencoder for mnist denoising using hls4ml to synthesize



the config used for hls4ml:



    hls_path = 'denoise_mnist'

    config = hls4ml.utils.config_from_keras_model(model, granularity='model')

    config['Model'] = {}

    config['Model']['ReuseFactor'] = 64

    config['Model']['Strategy'] = 'Resource'

    config['Model']['Precision'] = 'ap_fixed<32,16>'

    hls_model = hls4ml.converters.convert_from_keras_model(model,
                                                           hls_config=config,
                                                           output_dir=hls_path,
                                                           backend='VivadoAccelerator',
                                                           io_type='io_stream',
                                                           board='pynq-z2')
                                                      
