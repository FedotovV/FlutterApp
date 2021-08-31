import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
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
            _MenuWidget()
          ],
        ),
      ),
    );
  }
}

class _MenuWidget extends StatelessWidget {
  const _MenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        width: double.infinity,
        child: Column(
          children: [
            _MenuWidgetRow(icon: Icons.favorite, text: 'Избранное'),
            _MenuWidgetRow(icon: Icons.call, text: 'Звонки'),
            _MenuWidgetRow(icon: Icons.computer, text: 'Устройства'),
            _MenuWidgetRow(icon: Icons.folder, text: 'Папка с чатами'),
            SizedBox(
              height: 30,
            ),
            _MenuWidgetRow(
                icon: Icons.notifications, text: 'Уведомления и звуки'),
            _MenuWidgetRow(icon: Icons.privacy_tip, text: 'Конфиденциальность'),
            _MenuWidgetRow(icon: Icons.data_usage, text: 'Данные и память'),
            _MenuWidgetRow(icon: Icons.language, text: 'Язык'),
          ],
        ));
  }
}

class _MenuWidgetRow extends StatelessWidget {
  final IconData icon;
  final String text;

  const _MenuWidgetRow({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Column(
        children: [
          Row(
            children: [
              Icon(icon),
              SizedBox(
                width: 15,
              ),
              Expanded(child: Text(text)),
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
