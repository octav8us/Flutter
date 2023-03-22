import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'Jobp_feature/data/DataSource/getjobs.dart';
import 'Jobp_feature/data/reposotorey/datarepojop.dart';
import 'Jobp_feature/domain/entities/jobs.dart';
import 'Jobp_feature/domain/reposotrey/job_feature.dart';
import 'Jobp_feature/domain/use case/getjob.dart';
import 'core/error/failure.dart';
import 'core/services/services_locator.dart';
import 'main_page/Presentation/widgets/app_bar.dart';
import 'main_page/Presentation/widgets/horizintal_list_card.dart';
import 'main_page/Presentation/widgets/search_bar.dart';
import 'main_page/Presentation/widgets/vertical_list_card.dart';

void main() async {
  ServicesLocator().init();
  // BaseDataSource vv = DataSource();
  // BaseJobsReposotrey basere = JobReposotrey(vv);
  // Either<Failure, List<Jobs>> jop = await GetJobsUsecase(basere).call();
  // Either<Failure, List<Jobs>> joob =
  //     await GetJobsUsecase(basere).excute('Test');

  // print(job);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

List<Widget> horizintalkCarouselItems = List.generate(
  10, // Replace with the number of items in your list
      (index) =>   HorizintalCard(),
);


List<Widget> carouselItems = List.generate(
  10,
      (index) => VerticalCard()
);

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _searchController = TextEditingController();

  DataSource _dataSource = DataSource();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: Padding(
        padding: EdgeInsets.only(top: 35.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            SizedBox(height: 5),
            CustomSearchBar(
              controller: _searchController,
              onSearch: () {
                var to_search =
                    _dataSource.getJobsByName(_searchController.text);
                print("to_search: ");
              },
            ),
            SizedBox(height: 10),
            SizedBox(height: 10),
            Text(
              'Featured Jobs',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount:carouselItems.length
                  ,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      width: 100,
                      padding: EdgeInsets.all(8),

                        child: horizintalkCarouselItems[index]
                        ,

                    );
                  },
                ),
            ) ,
          Container(
            height: 1,
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Colors.grey,
                  width: 1,
                ),
              ),
            ),
          ),
            SizedBox(height: 10),
            Text(
              'Recent Jobs',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              height: 600
              ,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: carouselItems.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.all(8),
                    child: carouselItems[index],
                  );
                },
              ),
            ) ,

          ],
        ),
      ),
    );
  }
}


