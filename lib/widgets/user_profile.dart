import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  final List<MenuRowData> firstMenuData = [
    MenuRowData(Icons.favorite, 'Избранное'),
    MenuRowData(Icons.call, 'Звонки'),
    MenuRowData(Icons.computer, 'Устройства'),
    MenuRowData(Icons.folder, 'Папка с чатами'),
  ];
  final List<MenuRowData> secondMenuData = [
    MenuRowData(Icons.notifications, 'Уведомления и звуки'),
    MenuRowData(Icons.privacy_tip, 'Конфиденциальность'),
    MenuRowData(Icons.data_usage, 'Данные и память'),
    MenuRowData(Icons.language, 'Язык'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Center(child: Text('Настройки')),
      ),
      body: Center(
        child: Column(
          children: [
            _UserInfo(),
            SizedBox(
              height: 30,
            ),
            _MenuWidget(
              menuData: firstMenuData,
            ),
            SizedBox(
              height: 30,
            ),
            _MenuWidget(
              menuData: secondMenuData,
            )
          ],
        ),
      ),
    );
  }
}

class MenuRowData {
  final IconData icon;
  final String text;

  MenuRowData(this.icon, this.text);
}

class _MenuWidget extends StatelessWidget {
  final List<MenuRowData> menuData;

  const _MenuWidget({
    Key? key,
    required this.menuData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        width: double.infinity,
        child: Column(
          children: menuData.map((data) => _MenuWidgetRow(data: data)).toList(),
        ));
  }
}

class _MenuWidgetRow extends StatelessWidget {
  final MenuRowData data;

  const _MenuWidgetRow({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Column(
        children: [
          Row(
            children: [
              Icon(data.icon),
              SizedBox(
                width: 15,
              ),
              Expanded(child: Text(data.text)),
              Icon(Icons.chevron_right)
            ],
          )
        ],
      ),
    );
  }
}

class _UserInfo extends StatelessWidget {
  const _UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          _AvatarWidget(),
          SizedBox(
            height: 30,
          ),
          _UsernameWidget(),
          SizedBox(
            height: 5,
          ),
          _PhoneNumberUserWidget(),
          SizedBox(
            height: 5,
          ),
          _NicknameUserWidget(),
        ],
      ),
    );
  }
}

class _NicknameUserWidget extends StatelessWidget {
  const _NicknameUserWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Ник пользователя',
      style: TextStyle(
          color: Colors.grey, fontSize: 17, fontWeight: FontWeight.w400),
    );
  }
}

class _PhoneNumberUserWidget extends StatelessWidget {
  const _PhoneNumberUserWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Номер телефона пользователя',
      style: TextStyle(
          color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w400),
    );
  }
}

class _UsernameWidget extends StatelessWidget {
  const _UsernameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Имя пользователя',
      style: TextStyle(
          color: Colors.black, fontSize: 25, fontWeight: FontWeight.w600),
    );
  }
}

class _AvatarWidget extends StatelessWidget {
  const _AvatarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(width: 100, height: 100, child: Placeholder());
  }
}
