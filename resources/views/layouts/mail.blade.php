<h1>Обращение от {{ $array['from_name'] }}</h1>
<h2>Тема сообщения: {{ $array['subject'] }}</h2>
<div>
    <span>Email пользователя:</span>
    <a href="mailto:{{ $array['guest_email'] }}">{{ $array['guest_email'] }}</a>
</div>
<div>
    <span>Телефон пользователя:</span>
    <a href="tel:{{ $array['guest_phone'] }}">{{ $array['guest_phone'] }}</a>
</div>
<h3>Сообщение:</h3>
<p>{{ $array['guest_message'] }}</p>
