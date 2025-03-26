INSERT INTO tests (acronym, title, description, questions_config)
SELECT
'K-ASRS', '성인용 ADHD 자가보고 척도', '', '{
  "questions": [
    {
      "id": 1,
      "text": "어떤 일의 어려운 부분은 끝내 놓고, 그 일을 마무리를 짓지 못해 곤란을 겪은 적이 있습니까?",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 0},
        {"id": 2, "text": "거의 그렇지 않다", "score": 1},
        {"id": 3, "text": "약간 가끔 그렇다", "score": 2},
        {"id": 4, "text": "자주 그렇다", "score": 3},
        {"id": 5, "text": "매우 자주 그렇다", "score": 4}
      ]
    },
    {
      "id": 2,
      "text": "체계가 필요한 일을 해야 할 때 순서대로 진행하기 어려운 경우가 있습니까?",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 0},
        {"id": 2, "text": "거의 그렇지 않다", "score": 1},
        {"id": 3, "text": "약간 가끔 그렇다", "score": 2},
        {"id": 4, "text": "자주 그렇다", "score": 3},
        {"id": 5, "text": "매우 자주 그렇다", "score": 4}
      ]
    },
    {
      "id": 3,
      "text": "약속이나 해야 할 일을 잊어버려 곤란을 겪은 적이 있습니까?",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 0},
        {"id": 2, "text": "거의 그렇지 않다", "score": 1},
        {"id": 3, "text": "약간 가끔 그렇다", "score": 2},
        {"id": 4, "text": "자주 그렇다", "score": 3},
        {"id": 5, "text": "매우 자주 그렇다", "score": 4}
      ]
    },
    {
      "id": 4,
      "text": "골치 아픈 일은 피하거나 미루는 경우가 있습니까?",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 0},
        {"id": 2, "text": "거의 그렇지 않다", "score": 1},
        {"id": 3, "text": "약간 가끔 그렇다", "score": 2},
        {"id": 4, "text": "자주 그렇다", "score": 3},
        {"id": 5, "text": "매우 자주 그렇다", "score": 4}
      ]
    },
    {
      "id": 5,
      "text": "오래 앉아 있을 때, 손을 만지작거리거나 발을 꼼지락거리는 경우가 있습니까?",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 0},
        {"id": 2, "text": "거의 그렇지 않다", "score": 1},
        {"id": 3, "text": "약간 가끔 그렇다", "score": 2},
        {"id": 4, "text": "자주 그렇다", "score": 3},
        {"id": 5, "text": "매우 자주 그렇다", "score": 4}
      ]
    },
    {
      "id": 6,
      "text": "마치 모터가 달린 것처럼, 과도하게 혹은 멈출 수 없이 활동을 하는 경우가 있습니까?",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 0},
        {"id": 2, "text": "거의 그렇지 않다", "score": 1},
        {"id": 3, "text": "약간 가끔 그렇다", "score": 2},
        {"id": 4, "text": "자주 그렇다", "score": 3},
        {"id": 5, "text": "매우 자주 그렇다", "score": 4}
      ]
    },
    {
      "id": 7,
      "text": "지루하고 어려운 일을 할 때, 부주의해서 실수를 하는 경우가 있습니까?",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 0},
        {"id": 2, "text": "거의 그렇지 않다", "score": 1},
        {"id": 3, "text": "약간 가끔 그렇다", "score": 2},
        {"id": 4, "text": "자주 그렇다", "score": 3},
        {"id": 5, "text": "매우 자주 그렇다", "score": 4}
      ]
    },
    {
      "id": 8,
      "text": "지루하고 반복적인 일을 할 때, 주의 집중히 힘든 경우가 있습니까?",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 0},
        {"id": 2, "text": "거의 그렇지 않다", "score": 1},
        {"id": 3, "text": "약간 가끔 그렇다", "score": 2},
        {"id": 4, "text": "자주 그렇다", "score": 3},
        {"id": 5, "text": "매우 자주 그렇다", "score": 4}
      ]
    },
    {
      "id": 9,
      "text": "대화 중, 상대방이 당신에게 직접적으로 말하고 있을 때에도 집중하기 힘든 경우가 있습니까?",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 0},
        {"id": 2, "text": "거의 그렇지 않다", "score": 1},
        {"id": 3, "text": "약간 가끔 그렇다", "score": 2},
        {"id": 4, "text": "자주 그렇다", "score": 3},
        {"id": 5, "text": "매우 자주 그렇다", "score": 4}
      ]
    },
    {
      "id": 10,
      "text": "집이나 직장에서 물건을 엉뚱한 곳에 두거나 어디에 두었는지 찾기 어려운 경우가 있습니까?",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 0},
        {"id": 2, "text": "거의 그렇지 않다", "score": 1},
        {"id": 3, "text": "약간 가끔 그렇다", "score": 2},
        {"id": 4, "text": "자주 그렇다", "score": 3},
        {"id": 5, "text": "매우 자주 그렇다", "score": 4}
      ]
    },
    {
      "id": 11,
      "text": "주변에서 벌어지는 일이나 소음 때문에 주의가 산만해 지는 경우가 있습니까?",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 0},
        {"id": 2, "text": "거의 그렇지 않다", "score": 1},
        {"id": 3, "text": "약간 가끔 그렇다", "score": 2},
        {"id": 4, "text": "자주 그렇다", "score": 3},
        {"id": 5, "text": "매우 자주 그렇다", "score": 4}
      ]
    },
    {
      "id": 12,
      "text": "회의나 다른 사회적 상황에서 계속 앉아 있어야 함에도 잠깐씩 자리를 뜨는 경우가 있습니까?",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 0},
        {"id": 2, "text": "거의 그렇지 않다", "score": 1},
        {"id": 3, "text": "약간 가끔 그렇다", "score": 2},
        {"id": 4, "text": "자주 그렇다", "score": 3},
        {"id": 5, "text": "매우 자주 그렇다", "score": 4}
      ]
    },
    {
      "id": 13,
      "text": "안절부절 못하거나 조바심하는 경우가 있습니까?",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 0},
        {"id": 2, "text": "거의 그렇지 않다", "score": 1},
        {"id": 3, "text": "약간 가끔 그렇다", "score": 2},
        {"id": 4, "text": "자주 그렇다", "score": 3},
        {"id": 5, "text": "매우 자주 그렇다", "score": 4}
      ]
    },
    {
      "id": 14,
      "text": "혼자 쉬고 있을 때, 긴장을 풀거나 마음을 편하게 갖기 어려운 경우가 있습니까?",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 0},
        {"id": 2, "text": "거의 그렇지 않다", "score": 1},
        {"id": 3, "text": "약간 가끔 그렇다", "score": 2},
        {"id": 4, "text": "자주 그렇다", "score": 3},
        {"id": 5, "text": "매우 자주 그렇다", "score": 4}
      ]
    },
    {
      "id": 15,
      "text": "사회적 상황에서 나 혼자 말을 너무 많이 한다고 느끼는 경우가 있습니까?",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 0},
        {"id": 2, "text": "거의 그렇지 않다", "score": 1},
        {"id": 3, "text": "약간 가끔 그렇다", "score": 2},
        {"id": 4, "text": "자주 그렇다", "score": 3},
        {"id": 5, "text": "매우 자주 그렇다", "score": 4}
      ]
    },
    {
      "id": 16,
      "text": "대화 도중 상대방이 말을 끝내기 전에 끼어들어 상대방의 말을 끊는 경우가 있습니까?",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 0},
        {"id": 2, "text": "거의 그렇지 않다", "score": 1},
        {"id": 3, "text": "약간 가끔 그렇다", "score": 2},
        {"id": 4, "text": "자주 그렇다", "score": 3},
        {"id": 5, "text": "매우 자주 그렇다", "score": 4}
      ]
    },
    {
      "id": 17,
      "text": "차례를 지켜야 하는 상황에서 자신의 차례를 기다리는 것이 어려운 경우가 있습니까?",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 0},
        {"id": 2, "text": "거의 그렇지 않다", "score": 1},
        {"id": 3, "text": "약간 가끔 그렇다", "score": 2},
        {"id": 4, "text": "자주 그렇다", "score": 3},
        {"id": 5, "text": "매우 자주 그렇다", "score": 4}
      ]
    },
    {
      "id": 18,
      "text": "다른 사람이 바쁘게 일할 때, 방해되는 행동을 하는 경우가 있습니까?",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 0},
        {"id": 2, "text": "거의 그렇지 않다", "score": 1},
        {"id": 3, "text": "약간 가끔 그렇다", "score": 2},
        {"id": 4, "text": "자주 그렇다", "score": 3},
        {"id": 5, "text": "매우 자주 그렇다", "score": 4}
      ]
    }
  ]
}'
WHERE NOT EXISTS (SELECT 1 FROM tests WHERE acronym = 'K-ASRS');
