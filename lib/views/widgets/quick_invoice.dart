import 'package:flutter/material.dart';
import 'package:real_responsive_and_adaptive_design/views/widgets/custom_background_container.dart';
import 'package:real_responsive_and_adaptive_design/views/widgets/lates_transaction.dart';
import 'package:real_responsive_and_adaptive_design/views/widgets/quick_invoice_header.dart';
import 'package:real_responsive_and_adaptive_design/views/widgets/title_text_field.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          QuickInvoiceHeader(),
          LatesTransaction(),
          Divider(
            height: 48,
          ),
          TitleTextField(title: 'Customer name', hint: 'Type customer name'),
        ],
      ),
    );
  }
}
