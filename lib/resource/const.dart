const String apiKey =
    'pk.eyJ1IjoiendvcmsiLCJhIjoiY2t3ZmV3dDA0MGR6cTJ4bXUzM2FmNHV1NSJ9.kNVGywHvPSoRMtD4NDKmCQ';
double defaultPadding = 30;
double maxConstraints = 500;
double borderWidth = 1;

const Map<String, Map<String, String>> langExperienceList = {
  'en': {
    'A1': 'Beginner/Starter',
    'A2': 'Elementary',
    'B1': 'Intermediate',
    'B2': 'Upper-Intermediate',
    'C1': 'Advanced',
    'C2': 'Proficiency',
  },
  'ru': {
    'A1': 'Новичок/Начинающий',
    'A2': 'Элементарный',
    'B1': 'Средний',
    'B2': 'Выше среднего',
    'C1': 'Продвинутый',
    'C2': 'Носитель языка',
  }
};

const Map<String, Map<String, String>> timeWorkList = {
  'en': {
    '1': 'Full employment',
    '2': 'Part-time employment',
  },
  'ru': {
    '1': 'Полная занятость',
    '2': 'Частичная занятость',
  }
};

const Map<String, Map<String, String>> timeWorkSuffix = {
  'en': {
    '1': 'per month',
    '2': 'per hour',
  },
  'ru': {
    '1': 'в месяц',
    '2': 'в час',
  }
};

const Map<String, Map<String, String>> vacancyStatus = {
  'en': {
    '1': 'Draft',
    '2': 'Moderation',
    '3': 'Approved',
    '4': 'Rejected',
    '5': 'Removed from publication',
  },
  'ru': {
    '1': 'Черновик',
    '2': 'Модерация',
    '3': 'Одобрено',
    '4': 'Отклонено',
    '5': 'Снято с публикации',
  }
};
