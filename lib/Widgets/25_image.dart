import 'package:flutter/material.dart';

class ImageExample extends StatelessWidget {
  const ImageExample({Key? key});

  @override
  Widget build(BuildContext context) {
    List<String> urls = [
      'https://i.pinimg.com/564x/92/bf/93/92bf93424e31623299e863d87a135c34.jpg',
      'https://www.japantimes.co.jp/uploads/imported_images/uploads/2020/05/np_file_13590.jpeg',
      'https://pics.craiyon.com/2023-10-26/7ce97018ba5743f3ab110dda611f7e5b.webp',
      'https://w0.peakpx.com/wallpaper/830/24/HD-wallpaper-doraemon-anime-doraemon-and-nobita-mini-doraemon-nobita-nobita-and-doraemon.jpg',
      'https://zdigitizing.net/wp-content/uploads/2022/04/Doraemon-A.png'
    ];
    return Scaffold(
      appBar: AppBar(title: const Text('Image Example')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Text('Asset Image', style: TextStyle(fontSize: 25)),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xfff1f1f1),
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(40),
              ),

              /* -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- */
              /* To use AssetImage first create a assets folder in project directory and in this assets folder create one more folder named images to contains all images that we will use in our project                                                                                                                                                                 */
              /* -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- */

              child: const Image(
                  height: 300,
                  // width: 200,
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/doremon.jpeg')),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Text('Network Image', style: TextStyle(fontSize: 25)),
            ),

            /* -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- */
            /* To add Images from url over internet we need to put url on Image.network('url')                                                                                                                                                                                                                                                                          */
            /* -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- */

            Image.network(
              'https://i.pinimg.com/564x/92/bf/93/92bf93424e31623299e863d87a135c34.jpg',
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Text('Network Images From Url List',
                  style: TextStyle(fontSize: 25)),
            ),

            /* -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- */
            /* Here i added multiple image from urls list                                                                                                                                                                                                                                                                                                               */
            /* -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- */

            SizedBox(
              height: 300, // Adjust the height as needed
              child: GridView.builder(
                itemCount: urls.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(urls[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
