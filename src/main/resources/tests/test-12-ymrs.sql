INSERT INTO tests (acronym, title, description, questions_config)
SELECT
'YMRS', '조증 평가척도', '', '{
  "questions": [
    {
      "id": 1,
      "text": "지난 한 주 동안 기분이 어땠습니까?\n미래에 대해 낙관적이었습니까?(그렇게 느낄 만한 이유가 있었습니까?)\n특별히 자신감이 넘쳤습니까?(특히 자신에 관해서 만족스럽다고)\n기분이 좋거나 약간 들뜬 것처럼 느낀 적이 있었습니까?(그렇다고 하면, 좋은 날에는 정말 기분이 좋았습니까? 아니면 나쁜 날보다 좀 나았습니까?)\n평소에는 우습지 않던 일로 웃었던 적이 있었습니까? 혹은 다른 사람들은 우습지 않다고(혹은 경박하다고) 생각하는 일에 대해 웃거나 농담을 하였습니까?",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "없다", "score": 0},
        {"id": 2, "text": "물어보았을때 경도로 고조되거나 고조되어 있을 가능성이 있다.", "score": 0},
        {"id": 3, "text": "주관적으로 명백하게 고조되어 있다. 낙관적이거나 자신감에 차있다. 유쾌하다. 내용에 적절하다", "score": 0},
        {"id": 4, "text": "고조되어 있거나 내용에 부적절하다. 억살맞다", "score": 0},
        {"id": 5, "text": "다행감; 부적절하게 웃는다. 노래를 부른다", "score": 0}
      ]
    },
    {
      "id": 2,
      "text": "지난 한 주 동안 당신의 에너지 수준은 어떠했습니까?\n특별히 에너지가 넘친다고 느낀 적이 있었습니까? (그렇다고 하면, 진정하기 힘들었습니까?)\n신체적으로 안절부절못했습니까? (가만히 앉아있지 못함)\n평소보다 더 활동적이었습니까? 평소보다 일을 더 많이 했습니까?",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "없다", "score": 0},
        {"id": 2, "text": "주관적으로 증가되어 있다", "score": 0},
        {"id": 3, "text": "활기차다: 몸짓이 증가되어 있다", "score": 0},
        {"id": 4, "text": "과다한 에너지; 때로 과다 활동적이다; 안절부절 못한다 (진정될 수 있다)", "score": 0},
        {"id": 5, "text": "운동성 흥분; 지속적인 과다활동(진정될 수 없다)", "score": 0}
      ]
    },
    {
      "id": 3,
      "text": "평소보다 성적 관심이 많았습니까?\n평소와는 다른 성적 행동을 하였습니까?\n평소보다 성적인 이야기나 농담을 더 많이 하였습니까?",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "정상; 증가되어 있지 않다", "score": 0},
        {"id": 2, "text": "경도로 증가되어있거나 혹은 증가되어 있을 가능성이 있다", "score": 0},
        {"id": 3, "text": "물어볼 때 명백하게 주관적으로 증가되어 있다", "score": 0},
        {"id": 4, "text": "자발적으로 성적인 내용을 말한다; 성적인 것에 대해 자세히 말한다; 스스로 성욕이 항진되어 있다고 보고한다.", "score": 0},
        {"id": 5, "text": "공공연하게 성적인 행동을 한다 (환자, 치료진 혹은 평가자에 대하여)", "score": 0}
      ]
    },
    {
      "id": 4,
      "text": "잠을 몇 시간 잡니까?\n평소보다 덜 자고 싶었습니까? (그래도 여전히 편안했습니까?)\n(그래도 여전히 편안했습니까?)",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "수면시간의 감소가 없다고 보고한다", "score": 0},
        {"id": 2, "text": "정상 수면시간보다 한시간 미만으로 감소되어 있다.", "score": 0},
        {"id": 3, "text": "정상 수면시간보다 한시간 이상으로 감소되어 있다", "score": 0},
        {"id": 4, "text": "수면에 대한 필요성이 감소했다고 보고한다", "score": 0},
        {"id": 5, "text": "수면의 필요성을 부인한다", "score": 0}
      ]
    },
    {
      "id": 5,
      "text": "일어난 일이나 사람들이 당신을 대하는 태도 때문에 짜증이 났습니까?\n이런 일 때문에 평소보다 더 괴로웠습니까?\n종종 과민했습니까?\n화난 것을 어떻게 표현하였습니까?",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "없다", "score": 0},
        {"id": 2, "text": "주관적으로 증가되어 있다", "score": 0},
        {"id": 3, "text": "면담 도중에 때때로 과민하디; 최근 병동에서 화를 내거나 짜증을 내는 에피소드가 있었다", "score": 0},
        {"id": 4, "text": "면담 도중에 자주 과민하다; 내내 무뚝뚝하고 퉁명스럽다", "score": 0},
        {"id": 5, "text": "적대적이거나 비협조적이다; 면담이 불가능하다", "score": 0}
      ]
    },
    {
      "id": 6,
      "text": "평소보다 일이 더 많았습니까?\n누군가 말할 틈도 주지 않는다고 지적했습니까?\n한 번 말을 시작하면 멈추기 어려웠습니까?\n말을 너무 빨리 해서 사람들이 이해하지 못한 적이 있었습니까?",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "증가하지 않았다", "score": 0},
        {"id": 2, "text": "말이 많은 듯한 느낌이 든다", "score": 0},
        {"id": 3, "text": "때로 속도와 양이 증가하거나 때로는 일이 장황하다", "score": 0},
        {"id": 4, "text": "밀어내듯이 말한다; 속도와 양이 지속적으로 증가한다; 중단시키기 힘들다", "score": 0},
        {"id": 5, "text": "쏟아내듯이 말한다(언어의 압박); 중단시킬 수 없거나 계속 말을 한다", "score": 0}
      ]
    },
    {
      "id": 7,
      "text": "평소보다 아이디어가 더 많거나 기발한 생각이 떠오르곤 했습니까?\n지난 한 주 동안 유달리 생각이 예리하거나 명쾌하였습니까?\n종종 산만해졌습니까?\n머리가 매우 빨리 돌아가는 것 같았습니까?\n때로 생각이 너무 많아서 무엇을 말하고 있는지 흐름을 놓친 적이 있었습니까?\n세부적인 데 치우쳐서 헤매지는 않았습니까?",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "없다", "score": 0},
        {"id": 2, "text": "무원적이다; 경도로 산만하다; 빠른 사고", "score": 0},
        {"id": 3, "text": "산만하다; 사고의 목표를 잃는다; 자주 주제가 바뀐다; 사고질주", "score": 0},
        {"id": 4, "text": "사고의 비약; 사고의 이탈; 따라잡기 힘들다; 운율적 언어 혹은 반항언어", "score": 0},
        {"id": 5, "text": "지리멸렬하다; 의사소통이 불가능하다", "score": 0}
      ]
    },
    {
      "id": 8,
      "text": "새로운 계획을 세우거나 시작했습니까?\n특별한 일을 해냈습니까?\n평소보다 더 유능했습니까?\n평소보다 사물을 더 깊이 이해할 수 있었습니까?\n어떤 종교적인 통찰력을 얻었습니까?\n우연의 일치를 더 많이 감지했습니까?\n주변에서 일어난 일에서 특별한 의미를 발견했습니까? \n다른 사람들이 놓친 것을 알아차리거나, 남들이 당신에 대해 말하거나 심지어 당신을 해치려 한다고 느꼈습니까?\n다른 사람들이 이해하지 못하는 생각을 했습니까?\n환각이 있었습니까? (다른 사람들이 보거나 듣지 못하는 것을 보거나 들었습니까?)",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "정상", "score": 0},
        {"id": 2, "text": "실현 가능성이 의심스러운 계획이나 새로운 관심", "score": 0},
        {"id": 3, "text": "특별하고 구체적인 계획; 지나치게 종교적이다", "score": 0},
        {"id": 4, "text": "과대사고 혹은 편집성 사고; 관계사고", "score": 0},
        {"id": 5, "text": "망상, 환각", "score": 0}
      ]
    },
    {
      "id": 9,
      "text": "다른 사람들과 어떻게 지냈습니까?(협조적이었습니까?)\n언성을 높이거나 요구가 많거나 혹은 빈정거린 적이 있었습니까?\n다른 사람들과 맞부딪힌 적이 있었습니까?(어떤 일이 있었습니까?)\n고함을 지르거나 물건을 던지거나 위협을 하는 것과 같은 일을 하거나 파괴적인 일을 하고 있다고 느낀 적이 있습니까?",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "없다. 협조적이다", "score": 0},
        {"id": 2, "text": "빈정댄다; 때로 언성을 높이거나 방어적이다", "score": 0},
        {"id": 3, "text": "요구가 많다; 병동에서 위협적인 행동을 한다", "score": 0},
        {"id": 4, "text": "면담자를 위협한다; 고함을 지른다; 면담이 어렵다", "score": 0},
        {"id": 5, "text": "폭력적이다; 파괴적이다; 면담이 불가능하다", "score": 0}
      ]
    },
    {
      "id": 10,
      "text": "용모와 옷차림새를 단정히 했습니까? 그렇게 하기 힘들었습니까?\n남이 보기에 지나치게 옷을 차려 입었거나 제대로 갖춰 입지 못했던 적이 있습니까?\n지난 한 주 동안 평소와는 다른 색깔의 옷을 선택하였습니까?\n평소보다 보석장식이나 화장을 더 많이했습니까?\n차림새에 전혀 신경을 쓰지 않았던 적이 있었습니까?",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "복장과 차림새가 적절하다", "score": 0},
        {"id": 2, "text": "약간 흐트러진 듯하다", "score": 0},
        {"id": 3, "text": "단정하지 못하다; 중등도로 헝클어져 있다; 지나치게 옷 치장을 한다", "score": 0},
        {"id": 4, "text": "옷 차림이 헝클어져 있다; 옷을 부분적으로만 입는다; 지나치게 화려한 화장을 한다", "score": 0},
        {"id": 5, "text": "완전히 흐트려져 있다; 장식이 요란하다; 옷차림이 괴상하다", "score": 0}
      ]
    },
    {
      "id": 11,
      "text": "지난 한 주를 돌이켜 볼 때 자신에게 이례적인 행동이라고 기억될 만한 일을 했습니까? [그렇다고 하면] 기분이 들떠서 그랬습니까?\n(환자에게 있었음직한 행동 증상을 예를 들어서) --------------------------를 어떻게 생각하십니까?",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "있다; 병을 인정한다; 치료 필요성에 동의한다", "score": 0},
        {"id": 2, "text": "병일 수도 있다", "score": 0},
        {"id": 3, "text": "행동 변화를 인정하나 병은 부인한다", "score": 0},
        {"id": 4, "text": "행동의 변화가능성은 인정하나 병은 부인한다", "score": 0},
        {"id": 5, "text": "전적으로 행동 변화를 부인한다", "score": 0}
      ]
    }
  ]
}'
WHERE NOT EXISTS (SELECT 1 FROM tests WHERE acronym = 'YMRS');