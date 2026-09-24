# AnimalRush

سایت فارسی رزرو تبلیغات + خرید سکه Animal Rush با GitHub Pages و Supabase.

## وضعیت
- Frontend: GitHub Pages
- Database/Auth: Supabase
- Font: Lahzeh Pro (فونت ارسالی شما)
- پنل مدیریت: داخل همان سایت و متصل به دیتابیس
- Publishable key در `index.html` قرار گرفته و Secret key استفاده نشده است.

## انتشار روی GitHub Pages
1. این ZIP را Extract کن.
2. محتوای پوشه `AnimalRush` را در Repository گیت‌هاب خودت آپلود کن.
3. از Settings > Pages، گزینه Deploy from a branch را فعال کن و Branch `main` و Folder `/ (root)` را انتخاب کن.
4. چند دقیقه بعد سایت با آدرس `https://USERNAME.github.io/` در دسترس است.

## مهم
برای استفاده از Auth در Supabase:
Authentication > URL Configuration را باز کن و URL سایت GitHub Pages را به Site URL اضافه کن.

## مدیریت
حسابی که در Supabase ساخته‌ای و role آن admin شده، مدیر سایت است.
از سایت وارد همان حساب شو؛ دکمه «پنل مدیریت» ظاهر می‌شود.

## امکانات فعلی
- رزرو تبلیغات و تقویم
- خرید سکه Animal Rush
- پیگیری سفارش
- پشتیبانی
- تغییر قیمت رزرو
- تغییر قیمت پکیج‌های سکه
- افزودن/حذف/فعال‌سازی محصولات
- تغییر شماره کارت و نام صاحب کارت
- تغییر شناسه تلگرام و پشتیبانی
- تغییر نام/عنوان/توضیحات سایت
- ۱۰ رنگ آماده
- تغییر تم روشن/تیره
- دکمه کپی شماره کارت
- مدیریت وضعیت رزروها و سفارش‌ها
- داشبورد آماری

## نکته امنیتی
هرگز Secret key یا service_role را داخل GitHub قرار نده. فقط Publishable/anon key برای مرورگر استفاده شود و RLS فعال بماند.
