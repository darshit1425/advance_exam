import 'package:advance_exam/screen/todo/model/todo_model.dart';
import 'package:advance_exam/screen/todo/provider/todo_provider.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class Insert_screen extends StatefulWidget {
  const Insert_screen({Key? key}) : super(key: key);

  @override
  State<Insert_screen> createState() => _HomeState();
}

class _HomeState extends State<Insert_screen> {
  TextEditingController txtid = TextEditingController();
  TextEditingController txtname = TextEditingController();
  TextEditingController txtstd = TextEditingController();

  TextEditingController dtxtname = TextEditingController();
  TextEditingController dtxtstd = TextEditingController();
  TextEditingController dtxtid = TextEditingController();

  HomeProvider? homeProvider;

  @override
  Widget build(BuildContext context) {
    homeProvider = Provider.of<HomeProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
          title: Text(
            "Insert deta",
            style: TextStyle(fontSize: 22, color: Colors.white),
          ),
          actions: [
            IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return const AlertDialog(
                      title: Text(
                        "User Product",
                        style: TextStyle(),
                      ),
                      content: AlertDialog(),
                    );
                  },
                );
              },
              icon: Icon(Icons.add),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              TextField(
                controller: txtid,
                decoration: InputDecoration(hintText: 'Enter  name '),
              ),
              SizedBox(
                height: 8,
              ),
              TextField(
                controller: txtname,
                decoration: InputDecoration(hintText: 'Enter price '),
              ),
              SizedBox(
                height: 8,
              ),
              TextField(
                controller: txtstd,
                decoration: InputDecoration(hintText: 'Enter  category'),
              ),
              SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: FloatingActionButton(
                  backgroundColor: Colors.black,
                  onPressed: () {
                    Detamodal s1 = Detamodal(
                        id: txtname.text, name: txtname.text, std: txtid.text);
                    homeProvider!.addData(s1);
                  },
                  child: Icon(Icons.add),
                ),
              ),
              Expanded(
                child: Consumer<HomeProvider>(
                  builder: (context, value, child) => Expanded(
                    child: ListView.builder(
                      itemCount: homeProvider!.l1.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: Text("${homeProvider!.l1[index].id}"),
                          title: Text("${homeProvider!.l1[index].name}"),
                          subtitle: Text("${homeProvider!.l1[index].std}"),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                onPressed: () {
                                  homeProvider!.delete(index);
                                },
                                icon: Icon(Icons.delete, color: Colors.red),
                              ),
                              IconButton(
                                onPressed: () {
                                  dtxtname = TextEditingController(
                                      text: homeProvider!.l1[index].name);
                                  dtxtid = TextEditingController(
                                      text: homeProvider!.l1[index].id);
                                  dtxtstd = TextEditingController(
                                      text: homeProvider!.l1[index].std);

                                  showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                      content: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          TextField(
                                            controller: dtxtid,
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          TextField(
                                            controller: dtxtname,
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          TextField(
                                            controller: dtxtstd,
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          ElevatedButton(
                                            onPressed: () {
                                              Detamodal s1 = Detamodal(
                                                  std: dtxtstd.text,
                                                  name: dtxtname.text,
                                                  id: dtxtid.text);
                                              homeProvider!
                                                  .updateData(index, s1);
                                              Navigator.pop(context);
                                            },
                                            child: Text("update"),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                                icon: Icon(Icons.edit),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
