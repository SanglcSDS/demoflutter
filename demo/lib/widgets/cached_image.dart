// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';

// class CustomCacheImage extends StatelessWidget {


//   @override
//   Widget build(BuildContext context) {
//     return ClipRRect(
//       borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(0),
//           topRight: Radius.circular(0),
//           bottomLeft: Radius.circular( 0),
//           bottomRight: Radius.circular(0)),
//       child: CachedNetworkImage(
//         imageUrl: imageUrl,
//         fit: BoxFit.cover,
//         height: MediaQuery.of(context).size.height,
//         placeholder: (context, url) => Container(color: Colors.grey[300]),
//         errorWidget: (context, url, error) => Container(
//           color: Colors.grey[300],
//           child: Icon(Icons.error),
//         ),
//       ),
//     );
//   }
// }
