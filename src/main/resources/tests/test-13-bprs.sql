INSERT INTO tests (acronym, title, description, questions_config)
SELECT
'BPRS', '간편 정신상태 평정 척도', '', '{
  "questions": [
    {
      "id": 1,
      "text": "신체적 건강, 신체질환에 대한 공포, 건강 염려증에 집착함.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "없음", "score": 0},
        {"id": 2, "text": "매우 경함", "score": 1},
        {"id": 3, "text": "경함", "score": 2},
        {"id": 4, "text": "중등도", "score": 3},
        {"id": 5, "text": "중고도", "score": 4},
        {"id": 6, "text": "심함", "score": 5},
        {"id": 7, "text": "극히 심함", "score": 6}
      ]
    },
    {
      "id": 2,
      "text": "걱정, 두려움, 현재나 미래에 대해 과도하게 걱정, 불편함.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "없음", "score": 0},
        {"id": 2, "text": "매우 경함", "score": 1},
        {"id": 3, "text": "경함", "score": 2},
        {"id": 4, "text": "중등도", "score": 3},
        {"id": 5, "text": "중고도", "score": 4},
        {"id": 6, "text": "심함", "score": 5},
        {"id": 7, "text": "극히 심함", "score": 6}
      ]
    },
    {
      "id": 3,
      "text": "자발적인 상호작용이 결여, 고립, 다른 사람과 관계를 맺는게 결핍",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "없음", "score": 0},
        {"id": 2, "text": "매우 경함", "score": 1},
        {"id": 3, "text": "경함", "score": 2},
        {"id": 4, "text": "중등도", "score": 3},
        {"id": 5, "text": "중고도", "score": 4},
        {"id": 6, "text": "심함", "score": 5},
        {"id": 7, "text": "극히 심함", "score": 6}
      ]
    },
    {
      "id": 4,
      "text": "사고과정이 혼란되어 있고, 연결이 되지 않고 와해되어 있으며, 붕괴되어 있음.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "없음", "score": 0},
        {"id": 2, "text": "매우 경함", "score": 1},
        {"id": 3, "text": "경함", "score": 2},
        {"id": 4, "text": "중등도", "score": 3},
        {"id": 5, "text": "중고도", "score": 4},
        {"id": 6, "text": "심함", "score": 5},
        {"id": 7, "text": "극히 심함", "score": 6}
      ]
    },
    {
      "id": 5,
      "text": "자기 비난, 창피함, 과거 행동에 대한 자책.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "없음", "score": 0},
        {"id": 2, "text": "매우 경함", "score": 1},
        {"id": 3, "text": "경함", "score": 2},
        {"id": 4, "text": "중등도", "score": 3},
        {"id": 5, "text": "중고도", "score": 4},
        {"id": 6, "text": "심함", "score": 5},
        {"id": 7, "text": "극히 심함", "score": 6}
      ]
    },
    {
      "id": 6,
      "text": "신경과민의 신체, 운동성 증상, 지나친 활동성 긴장",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "없음", "score": 0},
        {"id": 2, "text": "매우 경함", "score": 1},
        {"id": 3, "text": "경함", "score": 2},
        {"id": 4, "text": "중등도", "score": 3},
        {"id": 5, "text": "중고도", "score": 4},
        {"id": 6, "text": "심함", "score": 5},
        {"id": 7, "text": "극히 심함", "score": 6}
      ]
    },
    {
      "id": 7,
      "text": "이상하고 기괴하며 자연스럽지 못한 동작과 운동행동.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "없음", "score": 0},
        {"id": 2, "text": "매우 경함", "score": 1},
        {"id": 3, "text": "경함", "score": 2},
        {"id": 4, "text": "중등도", "score": 3},
        {"id": 5, "text": "중고도", "score": 4},
        {"id": 6, "text": "심함", "score": 5},
        {"id": 7, "text": "극히 심함", "score": 6}
      ]
    },
    {
      "id": 8,
      "text": "지나치게 과장된 자기의견, 오만, 일상적이지 않은 힘과 능력에 대한 과신",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "없음", "score": 0},
        {"id": 2, "text": "매우 경함", "score": 1},
        {"id": 3, "text": "경함", "score": 2},
        {"id": 4, "text": "중등도", "score": 3},
        {"id": 5, "text": "중고도", "score": 4},
        {"id": 6, "text": "심함", "score": 5},
        {"id": 7, "text": "극히 심함", "score": 6}
      ]
    },
    {
      "id": 9,
      "text": "후회, 슬픔, 의기소침함, 염세적임.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "없음", "score": 0},
        {"id": 2, "text": "매우 경함", "score": 1},
        {"id": 3, "text": "경함", "score": 2},
        {"id": 4, "text": "중등도", "score": 3},
        {"id": 5, "text": "중고도", "score": 4},
        {"id": 6, "text": "심함", "score": 5},
        {"id": 7, "text": "극히 심함", "score": 6}
      ]
    },
    {
      "id": 10,
      "text": "악의, 멸시, 호적적임, 다른 사람을 경멸.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "없음", "score": 0},
        {"id": 2, "text": "매우 경함", "score": 1},
        {"id": 3, "text": "경함", "score": 2},
        {"id": 4, "text": "중등도", "score": 3},
        {"id": 5, "text": "중고도", "score": 4},
        {"id": 6, "text": "심함", "score": 5},
        {"id": 7, "text": "극히 심함", "score": 6}
      ]
    },
    {
      "id": 11,
      "text": "불신, 다른 사람들의 행동을 악의적으로 보거나 차별대우를 한다고 믿음",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "없음", "score": 0},
        {"id": 2, "text": "매우 경함", "score": 1},
        {"id": 3, "text": "경함", "score": 2},
        {"id": 4, "text": "중등도", "score": 3},
        {"id": 5, "text": "중고도", "score": 4},
        {"id": 6, "text": "심함", "score": 5},
        {"id": 7, "text": "극히 심함", "score": 6}
      ]
    },
    {
      "id": 12,
      "text": "외적인 자극이 없는 지각에 해당되는 행동.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "없음", "score": 0},
        {"id": 2, "text": "매우 경함", "score": 1},
        {"id": 3, "text": "경함", "score": 2},
        {"id": 4, "text": "중등도", "score": 3},
        {"id": 5, "text": "중고도", "score": 4},
        {"id": 6, "text": "심함", "score": 5},
        {"id": 7, "text": "극히 심함", "score": 6}
      ]
    },
    {
      "id": 13,
      "text": "운동이나 말하기가 느리고 약함.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "없음", "score": 0},
        {"id": 2, "text": "매우 경함", "score": 1},
        {"id": 3, "text": "경함", "score": 2},
        {"id": 4, "text": "중등도", "score": 3},
        {"id": 5, "text": "중고도", "score": 4},
        {"id": 6, "text": "심함", "score": 5},
        {"id": 7, "text": "극히 심함", "score": 6}
      ]
    },
    {
      "id": 14,
      "text": "저항, 경계, 권위에 대한 부인.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "없음", "score": 0},
        {"id": 2, "text": "매우 경함", "score": 1},
        {"id": 3, "text": "경함", "score": 2},
        {"id": 4, "text": "중등도", "score": 3},
        {"id": 5, "text": "중고도", "score": 4},
        {"id": 6, "text": "심함", "score": 5},
        {"id": 7, "text": "극히 심함", "score": 6}
      ]
    },
    {
      "id": 15,
      "text": "이상하고 일상적이지 않으며 괴이한 사고내용.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "없음", "score": 0},
        {"id": 2, "text": "매우 경함", "score": 1},
        {"id": 3, "text": "경함", "score": 2},
        {"id": 4, "text": "중등도", "score": 3},
        {"id": 5, "text": "중고도", "score": 4},
        {"id": 6, "text": "심함", "score": 5},
        {"id": 7, "text": "극히 심함", "score": 6}
      ]
    },
    {
      "id": 16,
      "text": "감소된 감정적 반응, 감정의 정상적인 강도보다 감소되어 있고 둔화됨",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "없음", "score": 0},
        {"id": 2, "text": "매우 경함", "score": 1},
        {"id": 3, "text": "경함", "score": 2},
        {"id": 4, "text": "중등도", "score": 3},
        {"id": 5, "text": "중고도", "score": 4},
        {"id": 6, "text": "심함", "score": 5},
        {"id": 7, "text": "극히 심함", "score": 6}
      ]
    },
    {
      "id": 17,
      "text": "고조된 감정의 반응성, 초조, 과잉행동.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "없음", "score": 0},
        {"id": 2, "text": "매우 경함", "score": 1},
        {"id": 3, "text": "경함", "score": 2},
        {"id": 4, "text": "중등도", "score": 3},
        {"id": 5, "text": "중고도", "score": 4},
        {"id": 6, "text": "심함", "score": 5},
        {"id": 7, "text": "극히 심함", "score": 6}
      ]
    },
    {
      "id": 18,
      "text": "혼돈, 사람, 장소, 시간에 대한 적절한 관련성을 인식하지 못함.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "없음", "score": 0},
        {"id": 2, "text": "매우 경함", "score": 1},
        {"id": 3, "text": "경함", "score": 2},
        {"id": 4, "text": "중등도", "score": 3},
        {"id": 5, "text": "중고도", "score": 4},
        {"id": 6, "text": "심함", "score": 5},
        {"id": 7, "text": "극히 심함", "score": 6}
      ]
    }
  ]
}'
WHERE NOT EXISTS (SELECT 1 FROM tests WHERE acronym = 'BPRS');