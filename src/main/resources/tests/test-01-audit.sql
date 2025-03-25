INSERT INTO tests (acronym, title, description, questions_config)
SELECT
'AUDIT', '알코올 사용장애 선별검사', '알코올 섭취는 귀하의 건강과 복용하는 일부 약에 영향을 미칠 수 있습니다. 귀하께 최선의 치료를 제공할 수 있도록 아래의 질문에 답해 주세요.', '{
  "questions": [
    {
      "id": 1,
      "text": "알코올 음료를 얼마나 자주 마십니까?",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "마시지 않음", "score": 0},
        {"id": 2, "text": "월 1회 또는 미만", "score": 1},
        {"id": 3, "text": "월 2-4회", "score": 2},
        {"id": 4, "text": "주 2-3회", "score": 3},
        {"id": 5, "text": "주 4회 이상", "score": 4}
      ]
    },
    {
      "id": 2,
      "text": "술을 마신 때 보통 알코올 음료를 몇 잔 정도 마십니까?",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "0-2잔", "score": 0},
        {"id": 2, "text": "3-4잔", "score": 1},
        {"id": 3, "text": "5-6잔", "score": 2},
        {"id": 4, "text": "7-9잔", "score": 3},
        {"id": 5, "text": "10잔 이상", "score": 4}
      ]
    },
    {
      "id": 3,
      "text": "한 번에 4잔 이상을 얼마나 자주 마십니까?",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "없음", "score": 0},
        {"id": 2, "text": "월 1회 미만", "score": 1},
        {"id": 3, "text": "월 1회", "score": 2},
        {"id": 4, "text": "주 1회", "score": 3},
        {"id": 5, "text": "매일 또는 거의 매일", "score": 4}
      ]
    },
    {
      "id": 4,
      "text": "지난해에 얼마나 자주 금주에 실패했습니까?",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "없음", "score": 0},
        {"id": 2, "text": "월 1회 미만", "score": 1},
        {"id": 3, "text": "월 1회", "score": 2},
        {"id": 4, "text": "주 1회", "score": 3},
        {"id": 5, "text": "매일 또는 거의 매일", "score": 4}
      ]
    },
    {
      "id": 5,
      "text": "지난해에 음주 때문에 얼마나 자주 해야 할 일을 하지 못했습니까?",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "없음", "score": 0},
        {"id": 2, "text": "월 1회 미만", "score": 1},
        {"id": 3, "text": "월 1회", "score": 2},
        {"id": 4, "text": "주 1회", "score": 3},
        {"id": 5, "text": "매일 또는 거의 매일", "score": 4}
      ]
    },
    {
      "id": 6,
      "text": "지난해에 심한 음주 후 다음날 아침 취기를 없애기 위해 해장술이 필요한 적으로 얼마나 자주 있었습니까?",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "없음", "score": 0},
        {"id": 2, "text": "월 1회 미만", "score": 1},
        {"id": 3, "text": "월 1회", "score": 2},
        {"id": 4, "text": "주 1회", "score": 3},
        {"id": 5, "text": "매일 또는 거의 매일", "score": 4}
      ]
    },
    {
      "id": 7,
      "text": "지난해에 음주 후에 죄책감이나 양심의 가책을 느낀 적이 얼마나 자주 있었습니까?",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "없음", "score": 0},
        {"id": 2, "text": "월 1회 미만", "score": 1},
        {"id": 3, "text": "월 1회", "score": 2},
        {"id": 4, "text": "주 1회", "score": 3},
        {"id": 5, "text": "매일 또는 거의 매일", "score": 4}
      ]
    },
    {
      "id": 8,
      "text": "지난해에 음주로 인해 전날 밤 일을 기억하지 못한 적이 얼마나 자주 있었습니까?",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "없음", "score": 0},
        {"id": 2, "text": "월 1회 미만", "score": 1},
        {"id": 3, "text": "월 1회", "score": 2},
        {"id": 4, "text": "주 1회", "score": 3},
        {"id": 5, "text": "매일 또는 거의 매일", "score": 4}
      ]
    },
    {
      "id": 9,
      "text": "귀하의 음주 때문에 누군가가 다친적이 있습니까?",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "없음", "score": 0},
        {"id": 2, "text": "있음, 그러나 1년 이상 이전에", "score": 2},
        {"id": 3, "text": "있음, 지난해에 있었음", "score": 4}
      ]
    },
    {
      "id": 10,
      "text": "친척, 친구, 의사 또는 기타 의료 전문가가 귀하의 음주에 대해 걱정하거나 술을 끊기를 권유한 적이 있습니까?",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "없음", "score": 0},
        {"id": 2, "text": "있음, 그러나 1년 이상 이전에", "score": 2},
        {"id": 3, "text": "있음, 지난해에 있었음", "score": 4}
      ]
    },
    {
      "id": 11,
      "text": "알코올 문제로 치료를 받은 적이 있습니까?",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "없음", "score": 0},
        {"id": 2, "text": "현재 치료중", "score": 1},
        {"id": 3, "text": "과거에 받은 적이 있음", "score": 2}
      ]
    }
  ]
}'
WHERE NOT EXISTS (SELECT 1 FROM tests WHERE acronym = 'AUDIT');