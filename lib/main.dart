import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import 'Jobp_feature/data/DataSource/getjobs.dart';
import 'Jobp_feature/data/reposotorey/datarepojop.dart';
import 'Jobp_feature/domain/entities/jobs.dart';
import 'Jobp_feature/domain/reposotrey/job_feature.dart';
import 'Jobp_feature/domain/use case/getjob.dart';
import 'core/error/failure.dart';



void main() async {
  BaseDataSource vv = DataSource();
  BaseJobsReposotrey basere = JobReposotrey(vv);
  Either<Failure, List<Jobs>> jop = await JobsByNameUsecase(basere).call();
  Either<Failure, List<Jobs>> joob =
      await JobsByNameUsecase(basere).excute('Test');

  print(joob);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
