import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:emed/core/constants/font/fontStyles.dart';
import 'package:flutter/material.dart';

class BaseView<T> extends StatefulWidget {
  final T? viewModel;
  final Widget Function(BuildContext context, T value)? OnPageBuilder;
  final Function(T model)? onModelReady;
  final VoidCallback? onDispose;

  const  BaseView({
    Key? key, required this.viewModel, required this.OnPageBuilder, this.onModelReady, this.onDispose,
  }) :super(key: key);



  @override
  State<BaseView> createState()=> _BaseViewState();



}

  class _BaseViewState extends State<BaseView> {
    // ignore: prefer_typing_uninitialized_variables
    var subscription;
    // ignore: prefer_typing_uninitialized_variables
    var internetStatus;

    @override
    void initState() {
    super.initState();
    subscription = Connectivity().onConnectivityChanged.listen((ConnectivityResult result){
      setState((){
        internetStatus = result;
      });

    });
    if(widget.onModelReady != null)widget.onModelReady!(widget.viewModel);
  }
  @override
  Widget build(BuildContext context) {
    return internetStatus == ConnectivityResult.none ? 
      const Scaffold(body: Center(child: Text('no internet', style: FontStyles.headline4s,),),)
    : widget.OnPageBuilder!(context, widget.viewModel);
  }
  
  @override
  void dispose() {
    super.dispose();
    if(widget.onDispose != null) widget.onDispose!();
  }
  }