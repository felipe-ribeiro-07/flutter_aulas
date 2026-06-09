
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.keyboard_arrow_down, color: Color(0xFFcb0739)),
          onPressed: () {
           Navigator.pop(context);
          },
        ),
        title: const Text(
        "SACOLA",
        style: TextStyle(color: Colors.black, fontSize: 20)),
        centerTitle: true,

        actions: [
        const Text("Limpar",
        style: TextStyle(color: Color(0xFFcb0739), fontSize: 20))
        ],
      ),
      
      body: SingleChildScrollView(

      
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        
        children: [

          Container(
           
            height: 100, 
            color: Colors.white, 
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(
                  'https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?w=200&h=200&fit=crop',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
                  ),
                
                
                const SizedBox(width: 8),

                
                Expanded(
                    child: Column(
                      
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Text(
                        "McDonald's - São Roque (srd)",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                        
                      ),

                      Text(
                        "Adicionar mais itens",
                        style: TextStyle(color: Color(0xFFcb0739), fontSize: 18),
                      ),
                    ],
                  ),
                )
                 
                
              ],
            ),
          ),
          
          const SizedBox(height: 16),
          //container amarelo de taxa de entrega
          Container(
            height: 100,
            color: const Color(0xFFfff8eb), 
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.warning_amber_rounded,
                  color: Color(0xFF7C6E3D),
                  size: 24, 
                ),

                SizedBox(width: 8),

                
                   Text(
                    "O pedido mínimo dessa loja é R\$15.00 sem contar com a taxa de entrega",
                    style: TextStyle(color: Color(0xFF7c6e3d), fontSize: 12),
                  ),
                
              ],
            ),
          ),


            const SizedBox(height: 16),

           //Itens adicionados
           SizedBox(
            child: Text(
              "Itens adicionados", 
              style: TextStyle(
                color: Colors.black, 
                fontWeight: FontWeight.bold,
                ),
            ),
           ),

           const SizedBox(height: 16),

           //Item do carrinho
           Row(
            children: [

              Stack(
                  children: [
                  Image.network(
                  'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=150&h=150&fit=crop',
                  width: 50,
                  height: 50,
                ),

              Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: const BoxDecoration(
                  color: Colors.white,         
                  shape: BoxShape.circle,
                  ),
                  child: Icon(
                  Icons.edit,
                  color: Color(0xFFcb0739),
                      size: 15,
                    ),
                ),
              ),
          ],
      ),
          
          SizedBox(width: 8),

          SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  Text(
                    "McFritas Média",
                    style: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold,),
                  ),

                    Text(
                    "Deliciosas batatas selecionadas, fritas...",
                    style: TextStyle(color: Color(0xFFd9d9d9), fontSize: 12),
                  ),

                  SizedBox(
                  child: Row(
                      children: [
                    Text(
                        "R\$15,90",
                        style: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold,),
                      ),

                      SizedBox(width: 5),
                      
                      Icon(
                      Icons.diamond, 
                      color: Color(0xFF9d33ef), 
                      size: 15.0,        
                      ),
                      Text(
                        "R\$2,39",
                        style: TextStyle(color: Color(0xFF9d33ef), fontSize: 12, fontWeight: FontWeight.bold,),
                      ),



                      ],
                  ),  
                  ),
            
           

          ],
        ),
      ),

      SizedBox(width: 5),

            //container de adicionar itens
             Container(
              width: 90,
              height: 40,
              color: Color(0xFFf5f5f5),
              child: Row(

                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.delete_outline, color: Color(0xFFcc2145)),),


                    Text(
                     "1", 
                    style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),

                IconButton(onPressed: (){}, icon: Icon(Icons.add, color: Color(0xFFcc2145)),),
                    
                  ],

              ),
             )     
          ],),

          SizedBox(height: 20),

          
           //Adicionar mais itens
            SizedBox(
              child: Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Adicionar mais itens",
                    style: TextStyle(
                      color: Color(0xFFb8123a),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
            

           //Peça também
           SizedBox(
            child: Text(
              "Peça também", 
              style: TextStyle(
                color: Colors.black, 
                fontWeight: FontWeight.bold,
                fontSize: 18,
                ),
            ),
           ),

          SizedBox(height: 10),

           //Carrossel de itens pra adicionar no carrinho
           SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(20, (_)=>
          
                Padding(
                  padding: const EdgeInsets.only(right: 16.0, left: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, 
                    children: [
                      Stack(
                        children: [
                          Image.network(
                          'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=150&h=150&fit=crop',
                          width: 100,
                          height: 100,
                          ),

                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                            padding: const EdgeInsets.all(6),
                            decoration: const BoxDecoration(
                            color: Colors.white,         
                            shape: BoxShape.circle,
                            ),
                            child: const Icon(
                            Icons.add,
                            color: Color(0xFFcb0739),
                                size: 15,
                              ),
                          ),
                        ),
                        ],
                      ),
                      
                      const SizedBox(height: 4),

                      const Text(
                        "R\$20,00",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),

                      const Text(
                        "Big Mac",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
            ),
          ),
        ),

         SizedBox(height: 20),

         //Cupons bloqueados
        Row(
          children: [
              const Icon(
              Icons.lock,
              color: Color(0xFF161616), 
              size: 20,
            ),

              SizedBox(width: 8),


             Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Cupons bloqueados",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.black
                    ),
                  ),

                  Text(
                    "Item já tem desconto aplicado",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black
                    ),
                  )
                ],
              ),
            
            SizedBox(width: 8),
            TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Ver",
                    style: TextStyle(
                      color: Color(0xFFb8123a),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
            ],
          ),

          SizedBox(height: 20),

          //Resumo de valores
           SizedBox(
            child: Text(
              "Resumo de valores", 
              style: TextStyle(
                color: Colors.black, 
                fontWeight: FontWeight.bold,
                ),
            ),
           ),
          
          SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              
              Text(
                "Subtotal",
                style: TextStyle(
                  color: Color(0xFFa8a8a8),
                  fontSize: 12
                ),
                ),

                Text(
                "R\$ 2,39",
                style: TextStyle(
                  color: Color(0xFFa8a8a8),
                  fontSize: 12
                ),
                ),

            ],
          ),

            SizedBox(height: 5),

           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
            children: [
              
              Text(
                "Taxa de entrega",
                style: TextStyle(
                  color: Color(0xFFa8a8a8),
                  fontSize: 12
                ),
                ),

                Text(
                "R\$ 8,99",
                style: TextStyle(
                  color: Color(0xFFa8a8a8),
                  fontSize: 12
                ),
                ),

            ],
          ),
              
              SizedBox(height: 5),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             
              Row(
                children: [
                  const Text(
                    "Taxa de serviço",
                    style: TextStyle(
                      color: Color(0xFFa8a8a8),
                      fontSize: 12,
                    ),
                  ),
                  
                  const SizedBox(width: 4), 
                  
                  const Icon(
                    Icons.help, 
                    color: Colors.black54, 
                    size: 16, 
                  ),
                ],
              ),

              const Text(
                "R\$ 0,99",
                style: TextStyle(
                  color: Color(0xFFa8a8a8),
                  fontSize: 12,
                ),
              ),
            ],
          ),

           SizedBox(height: 5),
          //cupom da assinatura
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             
              Row(
                children: [
                  const Text(
                    "Cupom da assinatura",
                    style: TextStyle(
                      color: Color(0xFFa8a8a8),
                      fontSize: 12,
                    ),
                  ),
                  
                  const SizedBox(width: 4), 
                  
                  const Icon(
                    Icons.diamond, 
                    color: Color(0xFF9d33ef),  
                    size: 16, 
                  ),
                ],
              ),

              const Text(
                "- R\$ 13,51",
                style: TextStyle(
                  color: Color.fromARGB(255, 80, 168, 45),
                  fontSize: 12,
                ),
              ),
            ],
          ),


         SizedBox(height: 15),

          //total
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              
              Text(
                "Total",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.bold
                ),
                ),

                Text(
                "R\$ 12,37",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.bold
                ),
                ),

            ],
          ),

          SizedBox(height: 30),

          

        ],
      ),),

      //footer

      bottomNavigationBar: Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Total com a entrega",
              style: TextStyle(color: Color(0xFFa8a8a8), fontSize: 12),
            ),

            Row(
              children: [
                Icon(
                Icons.local_offer, 
                color: Color.fromARGB(255, 61, 129, 35), 
                size: 16,
              ),

              SizedBox(width: 4),

             Text(
              "R\$ 12,37",
              style: TextStyle(
                color: Color.fromARGB(255, 61, 129, 35),
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(width: 4),

            Text(
              "/ 1 item",
              style: TextStyle(
                color: Color(0xFFa8a8a8),
                fontSize: 15,
              ),
            ),
              ],

            ),

           
          ],
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFb8123a),
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onPressed: () {},
          child: const Text(
            "Continuar",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
          ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}