// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:vote_app/views/vote_page.dart';
import 'package:vote_app/widgets/tile_vote.dart';

class HomeVote extends StatelessWidget {
  const HomeVote({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const SizedBox(
            child: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Vote',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(18),
        children: [
          // Container(
          //   padding: EdgeInsets.all(18),
          //   height: 70,
          //   width: MediaQuery.of(context).size.width,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(20),
          //     color: Color(0xffCCDAFC),
          //   ),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     crossAxisAlignment: CrossAxisAlignment.center,
          //     children: const [
          //       Text(
          //         '24 jam tersisa',
          //         style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          //       ),
          //       Icon(
          //         Icons.check_box,
          //         size: 40,
          //         color: Colors.white,
          //       ),
          //     ],
          //   ),
          // ),
          const Text(
            'Pemilihan peserta terbaik',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 2),
          const Text(
            'Siapa pilihanmu ?',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 18),
          //search
          TextField(
            autofocus: false,
            cursorColor: Colors.black,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              hintText: 'Masukkan nama',
              contentPadding: const EdgeInsets.all(12),
              hintStyle: const TextStyle(
                color: Colors.grey,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.grey,
              ),
              prefixIconColor: Colors.grey,
            ),
          ),
          const SizedBox(height: 18),
          //TileVote
          CustomTileVote(
            nama: 'Muhammad\nIchsan',
            imgUrl: 'assets/img_profile.png',
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => const VotePage(),
              );
            },
          ),
          CustomTileVote(
            nama: 'Muhammad\nIchsan',
            imgUrl: 'assets/img_profile.png',
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => const VotePage(),
              );
            },
          ),
          CustomTileVote(
            nama: 'Muhammad\nIchsan',
            imgUrl: 'assets/img_profile.png',
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => const VotePage(),
              );
            },
          ),
          CustomTileVote(
            nama: 'Muhammad\nIchsan',
            imgUrl: 'assets/img_profile.png',
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => const VotePage(),
              );
            },
          ),
          CustomTileVote(
            nama: 'Muhammad\nIchsan',
            imgUrl: 'assets/img_profile.png',
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => const VotePage(),
              );
            },
          ),
          Container(
            padding: EdgeInsets.all(18),
            height: 70,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xffCCDAFC),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  '24 jam tersisa',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Icon(
                  Icons.check_box,
                  size: 40,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
