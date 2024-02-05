import 'package:bitcoin_flutter_app/view_models/transactions_list_item_view_model.dart';
import 'package:flutter/material.dart';

class TransactionListItem extends StatelessWidget {
  const TransactionListItem({super.key, required this.transaction});

  final TransactionsListItemViewModel transaction;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      leading: CircleAvatar(
        child: Icon(
          transaction.isIncoming ? Icons.arrow_downward : Icons.arrow_upward,
        ),
      ),
      title: Text(
        transaction.isIncoming ? 'Received funds' : 'Sent funds',
        style: theme.textTheme.titleMedium,
      ),
      subtitle: Text(
        transaction.formattedTimestamp,
        style: theme.textTheme.bodySmall,
      ),
      trailing: Text(
          '${transaction.isIncoming ? '+' : ''}${transaction.amountBtc} BTC',
          style: theme.textTheme.bodyMedium),
    );
  }
}
