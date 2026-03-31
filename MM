<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MOONY | QR-код акции</title>
    <link href="https://fonts.googleapis.com/css2?family=Lora:wght@400;500;600;700&family=Inter:wght@300;400;500;600&display=swap" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/qrcodejs@1.0.0/qrcode.min.js"></script>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            min-height: 100vh;
            background: linear-gradient(135deg, #E8E4F8 0%, #D6D2F0 100%);
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 20px;
            font-family: 'Inter', sans-serif;
        }

        /* ВНЕШНИЙ ФИОЛЕТОВЫЙ КВАДРАТ — БЕЗ СКРУГЛЕНИЙ */
        .outer {
            background: #B1B1E8;
            padding: 24px;
            box-shadow: 0 20px 35px rgba(138, 138, 214, 0.35);
            max-width: 500px;
            width: 100%;
        }

        /* ВНУТРЕННИЙ БЕЛЫЙ КВАДРАТ — БЕЗ СКРУГЛЕНИЙ */
        .inner {
            background: white;
            padding: 36px 28px 40px;
            text-align: center;
            box-shadow: inset 0 1px 2px rgba(0,0,0,0.02), 0 4px 12px rgba(0,0,0,0.03);
        }

        /* ЛОГОТИП */
        .logo {
            font-family: 'Lora', serif;
            font-size: 2.4rem;
            font-weight: 700;
            color: #B1B1E8;
            letter-spacing: 2px;
            margin-bottom: 6px;
        }

        .sub {
            font-size: 0.8rem;
            color: #8A8AD6;
            font-weight: 500;
            letter-spacing: 0.5px;
            margin-bottom: 28px;
        }

        /* КОНТЕЙНЕР QR-КОДА — БЕЗ СКРУГЛЕНИЙ */
        .qr-wrapper {
            background: #F8F8FF;
            padding: 20px;
            margin-bottom: 24px;
        }

        #qrcode {
            display: flex;
            justify-content: center;
            align-items: center;
        }

        #qrcode canvas,
        #qrcode img {
            width: 200px;
            height: 200px;
            display: block;
            margin: 0 auto;
        }

        /* ТЕКСТ ПОД QR */
        .scan-text {
            font-size: 0.9rem;
            color: #5A5A9A;
            font-weight: 500;
            margin-bottom: 28px;
        }

        /* ДЕКОРАТИВНАЯ ЛИНИЯ */
        .divider {
            width: 50px;
            height: 2px;
            background: #E0DCF5;
            margin: 0 auto 24px;
        }

        /* ОПИСАНИЕ АКЦИИ */
        .promo-desc {
            font-size: 0.85rem;
            color: #6A6A7A;
            line-height: 1.6;
        }

        .highlight {
            color: #B1B1E8;
            font-weight: 600;
        }

        .footer {
            margin-top: 24px;
            font-size: 0.7rem;
            color: #A0A0C0;
            letter-spacing: 0.3px;
        }

        @media (max-width: 480px) {
            .outer {
                padding: 16px;
            }
            .inner {
                padding: 28px 20px 32px;
            }
            .logo {
                font-size: 2rem;
            }
            #qrcode canvas,
            #qrcode img {
                width: 160px;
                height: 160px;
            }
        }
    </style>
</head>
<body>
    <div class="outer">
        <div class="inner">
            <!-- Бренд -->
            <div class="logo">MOONY</div>
            <div class="sub">NEW YORK STYLE COOKIES</div>

            <!-- QR-код -->
            <div class="qr-wrapper">
                <div id="qrcode"></div>
            </div>

            <!-- Текст под QR -->
            <div class="scan-text">
                📱 Наведи камеру или отсканируй QR-код
            </div>

            <div class="divider"></div>

            <!-- Описание акции -->
            <div class="promo-desc">
                <span class="highlight">🎁 Угадай количество M&M's в банке</span><br>
                Победитель заберёт <strong>всю банку конфет</strong> + коробку печенья MOONY с новым вкусом!
            </div>

            <!-- Футер -->
            <div class="footer">
                @moony_thecookie
            </div>
        </div>
    </div>

    <script>
        // ССЫЛКА НА СТРАНИЦУ С УГАДАЙКОЙ
        // ⚠️ ЗАМЕНИТЕ НА РЕАЛЬНЫЙ URL, КОГДА ВЫЛОЖИТЕ САЙТ
        const GAME_URL = 'https://moony-thecookie.ru/mm-guess'; // ← СЮДА ВАШУ ССЫЛКУ
        
        function generateQR() {
            const qrContainer = document.getElementById('qrcode');
            qrContainer.innerHTML = '';
            
            new QRCode(qrContainer, {
                text: GAME_URL,
                width: 200,
                height: 200,
                colorDark: "#2D2D3A",
                colorLight: "#FFFFFF",
                correctLevel: QRCode.CorrectLevel.H
            });
        }
        
        document.addEventListener('DOMContentLoaded', generateQR);
        console.log('QR-код ведёт на:', GAME_URL);
    </script>
</body>
</html>
