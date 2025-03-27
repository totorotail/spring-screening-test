INSERT INTO tests (acronym, title, description, questions_config)
SELECT
'PSQI', '피츠버그 수면의 질 척도', '지난 한달 동안 수면습관에 관한 질문들입니다.', '{
  "questions": [
    {
      "id": 1,
      "text": "몇 시에 잠자리에 들었습니까?",
      "type": "TEXT",
      "options": []
    },
    {
      "id": 2,
      "text": "밤에 잠드는데 얼마나 오래 걸렸습니까?",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "15분 이내", "score": 0},
        {"id": 2, "text": "16~30분", "score": 0},
        {"id": 3, "text": "31~60분", "score": 0},
        {"id": 4, "text": "1~2시간 이상", "score": 0}
      ]
    },
    {
      "id": 3,
      "text": "아침에 몇 시에 일어났습니까?",
      "type": "TEXT",
      "options": []
    },
    {
      "id": 4,
      "text": "지난 한달 동안, 실제로 잠잔 시간은 하루에 평균 얼마나 됩니까?\n(잠자리에서 보낸 시간이 아니고 실제로 잠잔 시간을 적으세요)",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "7시간 이상", "score": 0},
        {"id": 2, "text": "6~7시간", "score": 0},
        {"id": 3, "text": "5~6시간", "score": 0},
        {"id": 4, "text": "5시간 미만", "score": 0}
      ]
    },
    {
      "id": 5,
      "text": "지난 한달 동안 얼마나 자주 30분 이내로 잠들 수 없습니까?",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "한 번도 없었다", "score": 0},
        {"id": 2, "text": "한 주에 한 번보다 적게", "score": 1},
        {"id": 3, "text": "한 주에 1~2번 정도", "score": 2},
        {"id": 4, "text": "한 주에 3번 이상", "score": 3}
      ]
    },
    {
      "id": 6,
      "text": "지난 한달 동안 얼마나 자주 자다가 한밤중이나 새벽에 깹니까?",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "한 번도 없었다", "score": 0},
        {"id": 2, "text": "한 주에 한 번보다 적게", "score": 1},
        {"id": 3, "text": "한 주에 1~2번 정도", "score": 2},
        {"id": 4, "text": "한 주에 3번 이상", "score": 3}
      ]
    },
    {
      "id": 7,
      "text": "지난 한달 동안 얼마나 자주 자다가 화장실에 가려고 일어납니까?",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "한 번도 없었다", "score": 0},
        {"id": 2, "text": "한 주에 한 번보다 적게", "score": 1},
        {"id": 3, "text": "한 주에 1~2번 정도", "score": 2},
        {"id": 4, "text": "한 주에 3번 이상", "score": 3}
      ]
    },
    {
      "id": 8,
      "text": "지난 한달 동안 얼마나 자주 편안하게 숨 쉴 수 없습니까?",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "한 번도 없었다", "score": 0},
        {"id": 2, "text": "한 주에 한 번보다 적게", "score": 1},
        {"id": 3, "text": "한 주에 1~2번 정도", "score": 2},
        {"id": 4, "text": "한 주에 3번 이상", "score": 3}
      ]
    },
    {
      "id": 9,
      "text": "지난 한달 동안 얼마나 자주 기침을 하거나 시끄럽게 코를 곱니까?",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "한 번도 없었다", "score": 0},
        {"id": 2, "text": "한 주에 한 번보다 적게", "score": 1},
        {"id": 3, "text": "한 주에 1~2번 정도", "score": 2},
        {"id": 4, "text": "한 주에 3번 이상", "score": 3}
      ]
    },
    {
      "id": 10,
      "text": "지난 한달 동안 얼마나 자주 잘 때 춥습니까?",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "한 번도 없었다", "score": 0},
        {"id": 2, "text": "한 주에 한 번보다 적게", "score": 1},
        {"id": 3, "text": "한 주에 1~2번 정도", "score": 2},
        {"id": 4, "text": "한 주에 3번 이상", "score": 3}
      ]
    },
    {
      "id": 11,
      "text": "지난 한달 동안 얼마나 자주 잘 때 덥습니까?",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "한 번도 없었다", "score": 0},
        {"id": 2, "text": "한 주에 한 번보다 적게", "score": 1},
        {"id": 3, "text": "한 주에 1~2번 정도", "score": 2},
        {"id": 4, "text": "한 주에 3번 이상", "score": 3}
      ]
    },
    {
      "id": 12,
      "text": "지난 한달 동안 얼마나 자주 나쁜 꿈을 꿉니까?",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "한 번도 없었다", "score": 0},
        {"id": 2, "text": "한 주에 한 번보다 적게", "score": 1},
        {"id": 3, "text": "한 주에 1~2번 정도", "score": 2},
        {"id": 4, "text": "한 주에 3번 이상", "score": 3}
      ]
    },
    {
      "id": 13,
      "text": "지난 한달 동안의 기타 사항",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "한 번도 없었다", "score": 0},
        {"id": 2, "text": "한 주에 한 번보다 적게", "score": 1},
        {"id": 3, "text": "한 주에 1~2번 정도", "score": 2},
        {"id": 4, "text": "한 주에 3번 이상", "score": 3}
      ]
    },
    {
      "id": 14,
      "text": "지난 한달 동안에, 잠들기 위해 얼마나 자주 약을먹었습니까? (처방약 또는 약국에서 구입한 약)",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "한 번도 없었다", "score": 0},
        {"id": 2, "text": "한 주에 한 번보다 적게", "score": 1},
        {"id": 3, "text": "한 주에 1~2번 정도", "score": 2},
        {"id": 4, "text": "한 주에 3번 이상", "score": 3}
      ]
    },
    {
      "id": 15,
      "text": "지난 한달 동안, 운전하거나, 식사 때 또는 사회 활동을 하는 동안 얼마나 자주 졸음을느꼈습니까?",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "한 번도 없었다", "score": 0},
        {"id": 2, "text": "한 주에 한 번보다 적게", "score": 1},
        {"id": 3, "text": "한 주에 1~2번 정도", "score": 2},
        {"id": 4, "text": "한 주에 3번 이상", "score": 3}
      ]
    },
    {
      "id": 16,
      "text": "지난 한달 동안, 하는 일을 열중하는데 얼마나 많은 어려움이 있었습니까?",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "한 번도 없었다", "score": 0},
        {"id": 2, "text": "한 주에 한 번보다 적게", "score": 1},
        {"id": 3, "text": "한 주에 1~2번 정도", "score": 2},
        {"id": 4, "text": "한 주에 3번 이상", "score": 3}
      ]
    },
    {
      "id": 17,
      "text": "지난 한달 동안, 당신의 전반적인 수면의 질은 어느정도라고 평가하십니까?",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "매우 좋음", "score": 0},
        {"id": 2, "text": "상당히 좋음", "score": 1},
        {"id": 3, "text": "상당히 나쁜", "score": 2},
        {"id": 4, "text": "매우 나쁜", "score": 3}
      ]
    }
  ]
}'
WHERE NOT EXISTS (SELECT 1 FROM tests WHERE acronym = 'PSQI');