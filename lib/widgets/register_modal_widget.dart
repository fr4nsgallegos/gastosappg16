import 'package:flutter/material.dart';
import 'package:gastosappg16/data_general.dart';
import 'package:gastosappg16/widgets/field_widget.dart';
import 'package:gastosappg16/widgets/item_type_widget.dart';

class RegisterModalWidget extends StatelessWidget {
  RegisterModalWidget({super.key});

  TextEditingController _titleController = TextEditingController();
  TextEditingController _priceController = TextEditingController();
  TextEditingController _dateController = TextEditingController();

  Widget _buildAddButton() {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
        onPressed: () {},
        child: Text("Añadir", style: TextStyle(color: Colors.white)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Text("Registra tu pago", style: TextStyle(fontSize: 22)),
          SizedBox(height: 12),
          FieldWidget(
            controller: _titleController,
            hintText: "Ingresa el nombre del gasto",
          ),
          FieldWidget(
            controller: _priceController,
            hintText: "Ingresa el monto",
          ),
          FieldWidget(
            controller: _dateController,
            hintText: "Ingresa la fecha",
          ),

          Wrap(
            spacing: 8,
            runSpacing: 8,
            alignment: WrapAlignment.center,
            children: types.map((e) => ItemTypeWidget(data: e)).toList(),
          ),

          SizedBox(height: 8),

          _buildAddButton(),
        ],
      ),
    );
  }
}
