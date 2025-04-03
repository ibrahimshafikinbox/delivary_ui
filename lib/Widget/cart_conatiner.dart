import 'package:flutter/material.dart';
import 'package:flutter_task/utils/app_images.dart';

// class CartItem extends StatefulWidget {
//   @override
//   _CartItemState createState() => _CartItemState();
// }

// class _CartItemState extends State<CartItem> {
//   int quantity = 2;
//   int pricePerItem = 20;

//   void increaseQuantity() {
//     setState(() {
//       quantity++;
//     });
//   }

//   void decreaseQuantity() {
//     if (quantity > 1) {
//       setState(() {
//         quantity--;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       clipBehavior: Clip.none,
//       children: [
//         Container(
//           width: 200,
//           padding: EdgeInsets.all(16),
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(20),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black.withOpacity(0.1),
//                 blurRadius: 10,
//                 spreadRadius: 2,
//                 offset: Offset(0, 5),
//               ),
//             ],
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               CircleAvatar(
//                 radius: 40,
//                 backgroundImage:
//                     AssetImage(AppImages.burger2), // Replace with actual image
//               ),
//               SizedBox(height: 10),
//               Text(
//                 "Big Burger Queso",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.blue.shade900,
//                 ),
//               ),
//               SizedBox(height: 5),
//               Text(
//                 "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Animi, atque eaque eius esse et.",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   fontSize: 12,
//                   color: Colors.grey.shade600,
//                 ),
//               ),
//               SizedBox(height: 10),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   GestureDetector(
//                     onTap: decreaseQuantity,
//                     child: Container(
//                       padding: EdgeInsets.all(6),
//                       decoration: BoxDecoration(
//                         color: Colors.grey.shade200,
//                         borderRadius: BorderRadius.circular(5),
//                       ),
//                       child: Icon(Icons.remove,
//                           color: Colors.grey.shade800, size: 18),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                     child: Text(
//                       "$quantity",
//                       style:
//                           TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                   GestureDetector(
//                     onTap: increaseQuantity,
//                     child: Container(
//                       padding: EdgeInsets.all(6),
//                       decoration: BoxDecoration(
//                         color: Colors.purple,
//                         borderRadius: BorderRadius.circular(5),
//                       ),
//                       child: Icon(Icons.add, color: Colors.white, size: 18),
//                     ),
//                   ),
//                   SizedBox(width: 10),
//                   Text(
//                     "\$${quantity * pricePerItem}",
//                     style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.teal,
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//         Positioned(
//           top: -10,
//           right: -10,
//           child: GestureDetector(
//             onTap: () {
//               // Handle delete action
//             },
//             child: Container(
//               padding: EdgeInsets.all(8),
//               decoration: BoxDecoration(
//                 color: Colors.red,
//                 shape: BoxShape.circle,
//               ),
//               child: Icon(Icons.delete, color: Colors.white, size: 20),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
class CartItem extends StatefulWidget {
  // A callback that passes the updated total price for this item
  final ValueChanged<int> onQuantityChanged;

  CartItem({required this.onQuantityChanged});

  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  int quantity = 2;
  int pricePerItem = 20;

  void updatePrice() {
    // Calculate the new price based on quantity and notify the parent
    widget.onQuantityChanged(quantity * pricePerItem);
  }

  void increaseQuantity() {
    setState(() {
      quantity++;
    });
    updatePrice();
  }

  void decreaseQuantity() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
      updatePrice();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 200,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                spreadRadius: 2,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage:
                    AssetImage(AppImages.burger2), // Replace with actual image
              ),
              SizedBox(height: 10),
              Text(
                "Big Burger Queso",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.shade900,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Animi, atque eaque eius esse et.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey.shade600,
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: decreaseQuantity,
                    child: Container(
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Icon(Icons.remove,
                          color: Colors.grey.shade800, size: 18),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "$quantity",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  GestureDetector(
                    onTap: increaseQuantity,
                    child: Container(
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Icon(Icons.add, color: Colors.white, size: 18),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "\$${quantity * pricePerItem}",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: -10,
          right: -10,
          child: GestureDetector(
            onTap: () {
              // Handle delete action if needed
            },
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.delete, color: Colors.white, size: 20),
            ),
          ),
        ),
      ],
    );
  }
}
