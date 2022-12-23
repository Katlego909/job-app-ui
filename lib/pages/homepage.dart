import 'package:flutter/material.dart';
import '../utils/jobcard.dart';
import '../utils/recentjobs.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List jobsForYou = [
    // [companyName, jobTitle, logoImagePath, hourlyRate]
    ['Uber', 'UI Designer', 'assets/images/uber_photo.png', 65],
    ['Nike', 'Product Dev', 'assets/images/nike_photo.png', 50],
    ['TConnect SA', 'Software Developer', 'assets/images/tconnect.png', 105],
  ];

  final List RecentJobsForYou = [
    // [companyName, jobTitle, logoImagePath, hourlyRate]
    ['Uber', 'UI Designer', 'assets/images/uber_photo.png', 65],
    ['Nike', 'Product Dev', 'assets/images/nike_photo.png', 50],
    ['TConnect SA', 'Software Developer', 'assets/images/tconnect.png', 105],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 75),

          // Custom App Bar

          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Container(
              height: 50,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey[200],
              ),
              child: Image.asset('assets/images/drawer_icon.png'),
            ),
          ),

          const SizedBox(height: 25),

          // Discover New Path

          const Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              'Discover a New Path',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
          ),

          const SizedBox(height: 25),

          // Search Bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Container(
                            height: 30,
                            child: Image.asset(
                              'assets/images/search.png',
                              color: Colors.grey[600],
                            ),
                          ),
                        ),
                        const Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search for a job...',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 50,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Image.asset(
                    'assets/images/filter.png',
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 50,
          ),

          // For You - Job Cards

          const Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              'For You',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
          ),

          const SizedBox(
            height: 25,
          ),

          Container(
            height: 200,
            child: ListView.builder(
              itemCount: jobsForYou.length, // Length of list
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return JobCard(
                    companyName: jobsForYou[index][0],
                    jobTitle: jobsForYou[index][1],
                    logoImagePath: jobsForYou[index][2],
                    hourlyRate: jobsForYou[index][3]);
              },
            ),
          ),

          const SizedBox(
            height: 50,
          ),

          // Recently Added
          const Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              'Recently Added',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
          ),

          const SizedBox(
            height: 12,
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: ListView.builder(
                itemCount: RecentJobsForYou.length,
                itemBuilder: (context, index) {
                  return RecentJobs(
                      companyName: jobsForYou[index][0],
                      jobTitle: jobsForYou[index][1],
                      logoImagePath: jobsForYou[index][2],
                      hourlyRate: jobsForYou[index][3]);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
