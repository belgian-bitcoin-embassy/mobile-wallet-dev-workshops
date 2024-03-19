import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
class OpenChannelState extends Equatable {
  const OpenChannelState({
    this.host,
    this.port,
    this.nodeId,
    this.channelAmountSat,
    this.announceChannel,
    this.isOpeningChannel = false,
    this.error,
  });

  final String? host;
  final int? port;
  final String? nodeId;
  final int? channelAmountSat;
  final bool? announceChannel;
  final bool isOpeningChannel;
  final Exception? error;

  OpenChannelState copyWith({
    String? host,
    int? port,
    String? nodeId,
    int? channelAmountSat,
    bool? clearChannelAmountSat,
    bool? announceChannel,
    bool? isOpeningChannel,
    Exception? error,
    bool? clearError,
  }) {
    return OpenChannelState(
      host: host ?? this.host,
      port: port ?? this.port,
      nodeId: nodeId ?? this.nodeId,
      channelAmountSat: clearChannelAmountSat == true
          ? null
          : channelAmountSat ?? this.channelAmountSat,
      announceChannel: announceChannel ?? this.announceChannel,
      isOpeningChannel: isOpeningChannel ?? this.isOpeningChannel,
      error: clearError == true ? null : error ?? this.error,
    );
  }

  @override
  List<Object?> get props => [
        host,
        port,
        nodeId,
        channelAmountSat,
        announceChannel,
        isOpeningChannel,
        error,
      ];
}
