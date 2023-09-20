import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wedding_app/domain/storage/secure_storage_repository.dart';
import 'package:wedding_app/extensions/string_extension.dart';
import 'package:wedding_app/presentation/pages/base_cubit.dart';

part 'confirmation_cubit.freezed.dart';
part 'confirmation_state.dart';

class ConfirmationCubit extends BaseCubit<ConfirmationState> {
  final SecureStorageRepository _secureStorageRepository;

  ConfirmationCubit(this._secureStorageRepository) : super(const ConfirmationState.idle());

  final BehaviorSubject<bool> _isConfirmedSubject = BehaviorSubject();

  Stream<bool> get isConfirmedStream => _isConfirmedSubject.stream;

  Future<void> init({isRefresh = false}) async {
    if (!isRefresh) await _secureStorageRepository.deleteConfirmed();
    emit(const ConfirmationState.loaded());
    final isConfirmed = await _secureStorageRepository.isConfirmed() == "true";

    if (!_isConfirmedSubject.isClosed) _isConfirmedSubject.add(isConfirmed);
  }

  Future<void> clickSend(String userName, bool withPartner, String? partnerName, String? additionalInfo, String? contactNumber) async {
    emit(ConfirmationState.sendConfirmation(
      userName,
      withPartner,
      partnerName,
      additionalInfo,
      contactNumber,
    ));
  }

  Future<void> refreshPage() async {
    emit(const ConfirmationState.dump());
    await init(isRefresh: true);
  }

  Future<void> confirmAttend(ConfirmationChannel channel, BuildContext context, String userName, bool withPartner, String? partnerName, String? additionalInfo,
      String? contactNumber) async {
    Uri url = Uri();
    final messageBody = _generateMessageBody(context, userName, withPartner, partnerName, additionalInfo, contactNumber);
    if (channel == ConfirmationChannel.sms) {
      final contactNumber = AppLocalizations.of(context)!.contact_number.convertContactNumber();
      url = Uri.parse('sms:$contactNumber&body=$messageBody');
    }

    if (channel == ConfirmationChannel.email) {
      final emailSubject = AppLocalizations.of(context)!.confirmation_email_subject;
      final contactEmail = AppLocalizations.of(context)!.contact_email;
      url = Uri.parse('mailto:$contactEmail?subject=$emailSubject&body=$messageBody');
    }

    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }

    await _secureStorageRepository.setAsConfirmed();
    await refreshPage();
  }

  @override
  Future<void> close() {
    _isConfirmedSubject.close();
    return super.close();
  }

  String _generateMessageBody(BuildContext context, String userName, bool withPartner, String? partnerName, String? additionalInfo, String? contactNumber) {
    String text;
    final bodyHeader = AppLocalizations.of(context)!.confirmation_sms_header;
    final bodyText1 = withPartner
        ? "${AppLocalizations.of(context)!.confirmation_sms_body_with_partner}${partnerName ?? ""}"
        : AppLocalizations.of(context)!.confirmation_sms_body_without_partner;
    final bodyText2 = "${AppLocalizations.of(context)!.confirmation_sms_additional_info}${additionalInfo ?? ""}";
    final bodyText3 = "${AppLocalizations.of(context)!.confirmation_sms_responder_contact}${contactNumber ?? ""}";
    final footer = AppLocalizations.of(context)!.confirmation_sms_footer;

    text = "$bodyHeader \n $bodyText1. \n $bodyText2 \n $bodyText3 \n $footer $userName".convertToUtf8();

    return text;
  }
}

enum ConfirmationChannel {
  sms,
  email,
}
