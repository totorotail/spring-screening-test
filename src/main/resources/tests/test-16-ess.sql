INSERT INTO tests (acronym, title, description, questions_config)
SELECT
'ESS', '앱워스 주간졸림 설문', '', '{
  "questions": [
    {
      "id": 1,
      "text": "독서를 할 때",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "잠든적이 없다", "score": 0},
        {"id": 2, "text": "가끔 잠이 든다", "score": 1},
        {"id": 3, "text": "자주 잠이 든다", "score": 2},
        {"id": 4, "text": "대부분 잠이 든다", "score": 3}
      ]
    },
    {
      "id": 2,
      "text": "TV를 볼 때",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "잠든적이 없다", "score": 0},
        {"id": 2, "text": "가끔 잠이 든다", "score": 1},
        {"id": 3, "text": "자주 잠이 든다", "score": 2},
        {"id": 4, "text": "대부분 잠이 든다", "score": 3}
      ]
    },
    {
      "id": 3,
      "text": "공공장소(극장, 회의 등)에서 하는 일 없이 가만히 있을 때",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "잠든적이 없다", "score": 0},
        {"id": 2, "text": "가끔 잠이 든다", "score": 1},
        {"id": 3, "text": "자주 잠이 든다", "score": 2},
        {"id": 4, "text": "대부분 잠이 든다", "score": 3}
      ]
    },
    {
      "id": 4,
      "text": "운행 중인 자동차에 승객으로 1시간 이상 있을 때",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "잠든적이 없다", "score": 0},
        {"id": 2, "text": "가끔 잠이 든다", "score": 1},
        {"id": 3, "text": "자주 잠이 든다", "score": 2},
        {"id": 4, "text": "대부분 잠이 든다", "score": 3}
      ]
    },
    {
      "id": 5,
      "text": "오후에 쉬면서 누워 있을 때",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "잠든적이 없다", "score": 0},
        {"id": 2, "text": "가끔 잠이 든다", "score": 1},
        {"id": 3, "text": "자주 잠이 든다", "score": 2},
        {"id": 4, "text": "대부분 잠이 든다", "score": 3}
      ]
    },
    {
      "id": 6,
      "text": "앉아서 상대방과 이야기 할 때",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "잠든적이 없다", "score": 0},
        {"id": 2, "text": "가끔 잠이 든다", "score": 1},
        {"id": 3, "text": "자주 잠이 든다", "score": 2},
        {"id": 4, "text": "대부분 잠이 든다", "score": 3}
      ]
    },
    {
      "id": 7,
      "text": "술을 마시고 않고 점심 식사 후에 조용히 앉아 있을 때",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "잠든적이 없다", "score": 0},
        {"id": 2, "text": "가끔 잠이 든다", "score": 1},
        {"id": 3, "text": "자주 잠이 든다", "score": 2},
        {"id": 4, "text": "대부분 잠이 든다", "score": 3}
      ]
    },
    {
      "id": 8,
      "text": "운전 중 신호나 교통체증 등으로 몇 분간 멈춰 있을 때",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "잠든적이 없다", "score": 0},
        {"id": 2, "text": "가끔 잠이 든다", "score": 1},
        {"id": 3, "text": "자주 잠이 든다", "score": 2},
        {"id": 4, "text": "대부분 잠이 든다", "score": 3}
      ]
    }
  ]
}'
WHERE NOT EXISTS (SELECT 1 FROM tests WHERE acronym = 'ESS');