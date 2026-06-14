# 🚀 Запуск NoteCollect — покрокова інструкція (Windows)

---

## Крок 1 — Встановити Node.js

1. Відкрийте https://nodejs.org
2. Завантажте **LTS** версію (ліва кнопка)
3. Встановіть (просто натискайте "Next")
4. Перевірте: відкрийте `cmd` або `PowerShell` і виконайте:
   ```
   node -v
   ```
   Має вивести щось типу `v20.x.x`

---

## Крок 2 — Налаштувати Supabase (база даних)

1. Зайдіть на https://supabase.com
2. Натисніть **Start your project** → зареєструйтесь через GitHub
3. Натисніть **New project**, заповніть:
   - Name: `notecollect`
   - Database Password: придумайте і збережіть
   - Region: `Central EU (Frankfurt)` — найближче до України
4. Зачекайте ~2 хвилини поки проект запуститься
5. Зайдіть в **SQL Editor** (лівий сайдбар)
6. Скопіюйте весь вміст файлу `supabase/schema.sql` і вставте в редактор
7. Натисніть **Run** — таблиці створено!

### Отримати ключі API:
1. Зайдіть в **Project Settings** → **API**
2. Скопіюйте:
   - `Project URL` (виглядає як `https://xxxx.supabase.co`)
   - `anon public` key (довгий рядок)

---

## Крок 3 — Налаштувати проект

1. Відкрийте папку `notecollect` в провіднику
2. Знайдіть файл `.env.local.example`
3. Скопіюйте його і перейменуйте копію в `.env.local`
4. Відкрийте `.env.local` в блокноті та замініть значення:
   ```
   NEXT_PUBLIC_SUPABASE_URL=https://ВАШ-ПРОЕКТ.supabase.co
   NEXT_PUBLIC_SUPABASE_ANON_KEY=ВАШ-КЛЮЧ
   ```

---

## Крок 4 — Встановити залежності та запустити

Відкрийте `cmd` або `PowerShell`, перейдіть у папку проекту:
```
cd C:\Users\olegu\Claude\Projects\Bonista\notecollect
```

Встановіть пакети (один раз):
```
npm install
```

Запустіть сайт:
```
npm run dev
```

Відкрийте браузер: **http://localhost:3000** 🎉

---

## Крок 5 — Додати першу банкноту

1. Зайдіть на http://localhost:3000/auth/register
2. Зареєструйтесь
3. Перейдіть на http://localhost:3000/admin/banknotes/new
4. Заповніть форму і збережіть

---

## Налаштування сховища для фото (Supabase Storage)

1. В Supabase зайдіть в **Storage** → **New bucket**
2. Назва: `banknotes`, галочка **Public bucket**
3. Натисніть Create

---

## Деплой на Vercel (щоб сайт був в інтернеті)

1. Завантажте папку `notecollect` на GitHub
2. Зайдіть на https://vercel.com → **Import Project**
3. Оберіть ваш репозиторій
4. В **Environment Variables** додайте ті самі змінні що в `.env.local`
5. Натисніть **Deploy** — сайт буде доступний за посиланням типу `notecollect.vercel.app`

---

## Якщо щось не працює

Напишіть повідомлення про помилку (те що виводиться в cmd) — допоможу вирішити.
