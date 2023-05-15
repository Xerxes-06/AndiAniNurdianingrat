import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        accentColor: Colors.pink,
      ),
      home: InstagramHome(),
    );
  }
}

class InstagramHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        title: Text(
          'Instagram'
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.live_tv),
            onPressed: () {
              // Aksi yang ingin dilakukan saat tombol live TV ditekan
            },
          ),
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () {
              // Aksi yang ingin dilakukan saat tombol pesan ditekan
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMHBhUPBxIVExUSFRAVFRUYFRAPHRkVGBIXFhUZGBUYHSggGBonGxUVITEhJSkrLi4uFyszODMtNygtLisBCgoKDQ0NDg8NDy0ZFRkrKzcrKys3LSsrKystKysrKysrLSsrKysrKysrKysrKysrKysrKysrKysrKysrKysrK//AABEIANgA6QMBIgACEQEDEQH/xAAbAAEAAgMBAQAAAAAAAAAAAAAABQYBAwQCB//EADQQAQABAwAHBQcEAgMAAAAAAAABAgMEBRESITFBURNhcaHBIjKBkbHR4RQjM/BigjRCUv/EABUBAQEAAAAAAAAAAAAAAAAAAAAB/8QAFhEBAQEAAAAAAAAAAAAAAAAAAAER/9oADAMBAAIRAxEAPwD62AqAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAxtR1ZAAAAAAAAAAAAAAAAAAAAAAAAAasjIpx6Nd2dXr4Q05+bGJR1qnhHrPcr967N65tXZ1yCQyNMVVTqsRsx1nfP2hw3Miu7P7lUz8Z+jUKg90XJon2JmPCZh4Ad1jSty37/tR38fnCWxM+jK3U7p6T6dVbZidU7gW0RejdI9pMUZHHlV17p70oigAAAAAAAAAAAAAAAAADVk34x7M1V8vOeUNqD01f27+xTwp4+M/gHBeuzeuTVc4y8AqAAAAAACf0VmfqLWzc96nzjqgG7Ev/AKfIiqOXHw5gtAxE641xzZRQAAAAAAAAAAAAAAAGKp2adc8t6qXK+0rmqrnMz81k0hVs4Ver/wAz57lZWJQAAAAAAAAAFi0Vc7TCjXy1x8uHlqdiK0DV+1VHfE/OPwlUUAAAAAAAAAAAAAAABy6S/wCDX4esK2tOVR2mNVTHOmfoqyxKAAAAAAAAAAmNAcK/9fVLI3QdGzizPWr6QkkUAAAAAAAAAAAAAAAAVjOs9hlVU8teuPCd8LOjdNY3aWtujjTx8PwCDAVAAAAAABnjwYd+iMbtsjaq4U7/AI8vuCZxLXYY1NPSN/jxnzbgRQAAAAAAAAAAAAAAAA8QBX9JYP6avat+7Pl3OFbKqYrp1VxrieSGzdFTbnaxt8dOcfddRGDM7p3sAAAA68PAqyp3bqes+nUGnGx5ybuzb+M9I6rJj2Yx7UU2+EefexjY9ONb2bUeM858W5FAAAAAAAAAAAAAAAAAAAcl/SNuzxq1z0jf+AdYhrumZn+GmI75nX5Q5bmkblf/AG1eGqDDU5fw6Mj+Wnf14T80fd0RTE+xc1eOqfsi67tVfv1TPjMy8KiQnRe/dco+bbb0RE+9cj4Rr9UUAsVjRtuzv1bU9Z3+XB2KnTXNPuzMfGYb7efco4Vz8d/1MNWUQlrTNVP8tMT4ey7bOlLd33pmme/7oruGKZiqNdM6/NkAAAAAAAAAAAAAGu/fpx7e1dnVH94A2I/L0rTZ3Wvany+fNG5ukKsmdUezT06+LjXE10ZGZXkT+5Vu6Ruj5OcAAAAAAAAAAAbbN+qxVrtVTH96JTF0vFW7JjV/lHD4whgFtpqiunXTOuJ58WVZxcurFq/bndzjlKew8unLo10bpjjHT8IroAAAAAAAAB5qqiimZq3RG+Qa8nIjGtbVz4R1noruVk1ZN3aufCOj3nZU5V7XPCOEd33cyoAAAAAAAAAAAAAAAAPdq5NquKrc6ph4AWPAzYy7fSqOMesdzrVWxdmxdiq3xhZca/GRZiqjn5TzhFbQAAAAAEVpvJ2aYt0898+HKP70Sqr5l3t8mqrrO7w4QQrSAqAAAAAAAAAAAAAAAAAACQ0NkdlkbFXCr68vsj2YnZnXHIFtGuxc7WzFUc4iWxFAAAAasqvs8aqelNX0VYFiUAAAAAAAAAAAAAAAAAAAAABYND1bWDHdNUeev1dwIoAD/9k=',
                    ),
                  ),
                  title: Text('Pengguna $index'),
                  trailing: IconButton(
                    icon: Icon(Icons.more_horiz),
                    onPressed: () {
                      // Aksi yang ingin dilakukan saat tombol opsi ditekan
                    },
                  ),
                ),
                Image.network(
                  'data:image/jpeg;base64,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',
                  fit: BoxFit.cover,
                  height: 300,
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(Icons.favorite_border),
                        onPressed: () {
                          // Aksi yang ingin dilakukan saat tombol suka ditekan
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.comment),
                        onPressed: () {
                          // Aksi yang ingin dilakukan saat tombol komentar ditekan
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.send),
                        onPressed: () {
                          // Aksi yang ingin dilakukan saat tombol kirim ditekan
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Caption gambar $index',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 8),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text('Waktu posting'),
                ),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Pencarian',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            label: 'Unggah',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Aktivitas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}
