INSERT INTO tests (acronym, title, description, questions_config)
SELECT
'BAI', '벡 불안척도', '각 문장을 자세히 읽어보시고 오늘을 포함해서 지난 한 주 동안 자신의 상태를 가장 잘 나타낸다고 생각되는 번호에 ✓ 표 하세요.', '{
  "questions": [
    {
      "id": 1,
      "text": "가끔씩 몸이 저리고 쑤시며 감각이 마비된 느낌을 받는다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 느끼지 않았다", "score": 0},
        {"id": 2, "text": "조금 느꼈다", "score": 1},
        {"id": 3, "text": "상당히 느꼈다", "score": 2},
        {"id": 4, "text": "심하게 느꼈다", "score": 3}
      ]
    },
    {
      "id": 2,
      "text": "흥분된 느낌을 받는다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 느끼지 않았다", "score": 0},
        {"id": 2, "text": "조금 느꼈다", "score": 1},
        {"id": 3, "text": "상당히 느꼈다", "score": 2},
        {"id": 4, "text": "심하게 느꼈다", "score": 3}
      ]
    },
    {
      "id": 3,
      "text": "가끔씩 다리가 떨리곤 한다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 느끼지 않았다", "score": 0},
        {"id": 2, "text": "조금 느꼈다", "score": 1},
        {"id": 3, "text": "상당히 느꼈다", "score": 2},
        {"id": 4, "text": "심하게 느꼈다", "score": 3}
      ]
    },
    {
      "id": 4,
      "text": "편안하게 쉴 수가 없다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 느끼지 않았다", "score": 0},
        {"id": 2, "text": "조금 느꼈다", "score": 1},
        {"id": 3, "text": "상당히 느꼈다", "score": 2},
        {"id": 4, "text": "심하게 느꼈다", "score": 3}
      ]
    },
    {
      "id": 5,
      "text": "매우 나쁜 일이 일어날 것 같은 두려움을 느낀다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 느끼지 않았다", "score": 0},
        {"id": 2, "text": "조금 느꼈다", "score": 1},
        {"id": 3, "text": "상당히 느꼈다", "score": 2},
        {"id": 4, "text": "심하게 느꼈다", "score": 3}
      ]
    },
    {
      "id": 6,
      "text": "어지러움(현기증)을 느낀다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 느끼지 않았다", "score": 0},
        {"id": 2, "text": "조금 느꼈다", "score": 1},
        {"id": 3, "text": "상당히 느꼈다", "score": 2},
        {"id": 4, "text": "심하게 느꼈다", "score": 3}
      ]
    },
    {
      "id": 7,
      "text": "가끔씩 심장이 두근거리고 빨리 뛴다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 느끼지 않았다", "score": 0},
        {"id": 2, "text": "조금 느꼈다", "score": 1},
        {"id": 3, "text": "상당히 느꼈다", "score": 2},
        {"id": 4, "text": "심하게 느꼈다", "score": 3}
      ]
    },
    {
      "id": 8,
      "text": "침착하지 못하다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 느끼지 않았다", "score": 0},
        {"id": 2, "text": "조금 느꼈다", "score": 1},
        {"id": 3, "text": "상당히 느꼈다", "score": 2},
        {"id": 4, "text": "심하게 느꼈다", "score": 3}
      ]
    },
    {
      "id": 9,
      "text": "자주 겁을 먹고 무서움을 느낀다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 느끼지 않았다", "score": 0},
        {"id": 2, "text": "조금 느꼈다", "score": 1},
        {"id": 3, "text": "상당히 느꼈다", "score": 2},
        {"id": 4, "text": "심하게 느꼈다", "score": 3}
      ]
    },
    {
      "id": 10,
      "text": "신경이 과민 되어 있다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 느끼지 않았다", "score": 0},
        {"id": 2, "text": "조금 느꼈다", "score": 1},
        {"id": 3, "text": "상당히 느꼈다", "score": 2},
        {"id": 4, "text": "심하게 느꼈다", "score": 3}
      ]
    },
    {
      "id": 11,
      "text": "가끔씩 숨이 막히고 질식할 것 같다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 느끼지 않았다", "score": 0},
        {"id": 2, "text": "조금 느꼈다", "score": 1},
        {"id": 3, "text": "상당히 느꼈다", "score": 2},
        {"id": 4, "text": "심하게 느꼈다", "score": 3}
      ]
    },
    {
      "id": 12,
      "text": "자주 손이 떨린다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 느끼지 않았다", "score": 0},
        {"id": 2, "text": "조금 느꼈다", "score": 1},
        {"id": 3, "text": "상당히 느꼈다", "score": 2},
        {"id": 4, "text": "심하게 느꼈다", "score": 3}
      ]
    },
    {
      "id": 13,
      "text": "안절부절 못 해 한다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 느끼지 않았다", "score": 0},
        {"id": 2, "text": "조금 느꼈다", "score": 1},
        {"id": 3, "text": "상당히 느꼈다", "score": 2},
        {"id": 4, "text": "심하게 느꼈다", "score": 3}
      ]
    },
    {
      "id": 14,
      "text": "미칠 것 같은 두려움을 느낀다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 느끼지 않았다", "score": 0},
        {"id": 2, "text": "조금 느꼈다", "score": 1},
        {"id": 3, "text": "상당히 느꼈다", "score": 2},
        {"id": 4, "text": "심하게 느꼈다", "score": 3}
      ]
    },
    {
      "id": 15,
      "text": "가끔씩 숨쉬기 곤란할 때가 있다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 느끼지 않았다", "score": 0},
        {"id": 2, "text": "조금 느꼈다", "score": 1},
        {"id": 3, "text": "상당히 느꼈다", "score": 2},
        {"id": 4, "text": "심하게 느꼈다", "score": 3}
      ]
    },
    {
      "id": 16,
      "text": "죽을 것 같은 두려움을 느낀다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 느끼지 않았다", "score": 0},
        {"id": 2, "text": "조금 느꼈다", "score": 1},
        {"id": 3, "text": "상당히 느꼈다", "score": 2},
        {"id": 4, "text": "심하게 느꼈다", "score": 3}
      ]
    },
    {
      "id": 17,
      "text": "불안한 상태에 있다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 느끼지 않았다", "score": 0},
        {"id": 2, "text": "조금 느꼈다", "score": 1},
        {"id": 3, "text": "상당히 느꼈다", "score": 2},
        {"id": 4, "text": "심하게 느꼈다", "score": 3}
      ]
    },
    {
      "id": 18,
      "text": "자주 소화가 잘 안되고 뱃속이 불편하다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 느끼지 않았다", "score": 0},
        {"id": 2, "text": "조금 느꼈다", "score": 1},
        {"id": 3, "text": "상당히 느꼈다", "score": 2},
        {"id": 4, "text": "심하게 느꼈다", "score": 3}
      ]
    },
    {
      "id": 19,
      "text": "가끔씩 기절할 것 같다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 느끼지 않았다", "score": 0},
        {"id": 2, "text": "조금 느꼈다", "score": 1},
        {"id": 3, "text": "상당히 느꼈다", "score": 2},
        {"id": 4, "text": "심하게 느꼈다", "score": 3}
      ]
    },
    {
      "id": 20,
      "text": "자주 얼굴이 붉어지곤 한다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 느끼지 않았다", "score": 0},
        {"id": 2, "text": "조금 느꼈다", "score": 1},
        {"id": 3, "text": "상당히 느꼈다", "score": 2},
        {"id": 4, "text": "심하게 느꼈다", "score": 3}
      ]
    },
    {
      "id": 21,
      "text": "땀을 많이 흘린다(더위로 인한 경우는 제외).",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 느끼지 않았다", "score": 0},
        {"id": 2, "text": "조금 느꼈다", "score": 1},
        {"id": 3, "text": "상당히 느꼈다", "score": 2},
        {"id": 4, "text": "심하게 느꼈다", "score": 3}
      ]
    }
  ]
}'
WHERE NOT EXISTS (SELECT 1 FROM tests WHERE acronym = 'BAI');