import 'package:flutter/material.dart';

import '../../../core/common_widget/button/primary_filled_button.dart';
import '../domain/app_maintenance.dart';

/// 端末のバックキーや画面操作を受け付けないWidget
///
/// 透明のWidgetで囲い、ダイアログ表示を模している
class OverlayInMaintenanceDialog extends StatelessWidget {
  const OverlayInMaintenanceDialog({super.key, required this.appMaintenance});

  final AppMaintenance appMaintenance;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Container(
        height: double.infinity,
        width: double.infinity,
        color: Theme.of(context).colorScheme.onSurface.withOpacity(0.3),
        child: Center(
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 8),
                  Text(
                    '🤖現在メンテナンス中です🤖'
                    '\n終了予定は${appMaintenance.scheduledEndTime}です。',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'ご不便をおかけし申し訳ございません🙇‍♂\n'
                    '詳しい情報は下記からご確認いただけます。',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 16),
                  PrimaryFilledButton(
                    onPressed: () {
                      // TODO(me): 更新情報が記載されているWebページ（Notion）へ遷移する
                    },
                    text: '最新情報を確認する',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
