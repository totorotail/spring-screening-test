INSERT INTO tests (acronym, title, description, questions_config)
SELECT
'K-RRS', '반추적 반응양식 척도', '사람들은 우울할 때 여러 가지 생각과 행도을 하게 됩니다. 아래의 문항을 읽고 우울할 때, 이러한 생각이나 행동들을 어느 정도 하는지를 평가하여 해당하는 숫자를 선택해 주세요.', '{
  "questions": []
}'
WHERE NOT EXISTS (SELECT 1 FROM tests WHERE acronym = 'K-RRS');