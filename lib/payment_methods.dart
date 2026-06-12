import 'package:flutter/material.dart';
import 'pix_payment.dart';
import 'orderConfirmed.dart';

class PaymentMethods extends StatefulWidget {
  const PaymentMethods({super.key});

  @override
  State<PaymentMethods> createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  String pagamentoSelecionado = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formas de Pagamento'),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 20),

            const Text(
              'CHECKOUT',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),

            GestureDetector(
              onTap: () {
                setState(() {
                  pagamentoSelecionado = 'Apple Pay';
                });
              },
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: pagamentoSelecionado == 'Apple Pay'
                        ? Colors.red
                        : Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.apple),

                    const SizedBox(width: 15),

                    const Text(
                      'Apple Pay',
                      style: TextStyle(fontSize: 16),
                    ),

                    const Spacer(),

                    if (pagamentoSelecionado == 'Apple Pay')
                      const Icon(
                        Icons.check_circle,
                        color: Colors.red,
                      ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 10),

            GestureDetector(
              onTap: () {
                setState(() {
                  pagamentoSelecionado = 'PIX';
                });
              },
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: pagamentoSelecionado == 'PIX'
                        ? Colors.red
                        : Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.qr_code),

                    const SizedBox(width: 15),

                    const Text(
                      'PIX',
                      style: TextStyle(fontSize: 16),
                    ),

                    const Spacer(),

                    if (pagamentoSelecionado == 'PIX')
                      const Icon(
                        Icons.check_circle,
                        color: Colors.red,
                      ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 25),

            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Cartões',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 10),

         
            GestureDetector(
              onTap: () {
                setState(() {
                  pagamentoSelecionado = 'Mastercard Crédito';
                });
              },
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: pagamentoSelecionado == 'Mastercard Crédito'
                        ? Colors.red
                        : Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.credit_card),

                    const SizedBox(width: 15),

                    const Text(
                      'Mastercard - Crédito',
                      style: TextStyle(fontSize: 16),
                    ),

                    const Spacer(),

                    if (pagamentoSelecionado == 'Mastercard Crédito')
                      const Icon(
                        Icons.check_circle,
                        color: Colors.red,
                      ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 10),

           
            GestureDetector(
              onTap: () {
                setState(() {
                  pagamentoSelecionado = 'Mastercard Débito';
                });
              },
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: pagamentoSelecionado == 'Mastercard Débito'
                        ? Colors.red
                        : Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.credit_card),

                    const SizedBox(width: 15),

                    const Text(
                      'Mastercard - Débito',
                      style: TextStyle(fontSize: 16),
                    ),

                    const Spacer(),

                    if (pagamentoSelecionado == 'Mastercard Débito')
                      const Icon(
                        Icons.check_circle,
                        color: Colors.red,
                      ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text('Adicionar novo cartão'),
            ),
          ],
        ),
      ),

bottomNavigationBar: Padding(
  padding: const EdgeInsets.all(16),
  child: SizedBox(
    height: 50,
    child: ElevatedButton(
      onPressed: () {

        if (pagamentoSelecionado == 'PIX') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PixPaymentPage(),
            ),
          );
        }

        if (pagamentoSelecionado == 'Mastercard Crédito' ||
            pagamentoSelecionado == 'Mastercard Débito') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const OrderConfirmed(),
            ),
          );
        }

      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      child: const Text(
        'Confirmar',
        style: TextStyle(fontSize: 16),
      ),
    ),
  ),
),
    );
  }
}