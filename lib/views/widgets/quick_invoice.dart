import 'package:flutter/material.dart';
import 'package:real_responsive_and_adaptive_design/views/widgets/custom_background_container.dart';
import 'package:real_responsive_and_adaptive_design/views/widgets/lates_transaction.dart';
import 'package:real_responsive_and_adaptive_design/views/widgets/lates_transaction_list_view.dart';
import 'package:real_responsive_and_adaptive_design/views/widgets/quick_invoice_form.dart';
import 'package:real_responsive_and_adaptive_design/views/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          LatesTransaction(),
          Divider(
            height: 48,
            color: Color(0xFFF1F1F1),
          ),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}
