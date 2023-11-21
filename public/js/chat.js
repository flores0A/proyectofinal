
document.addEventListener("DOMContentLoaded", function () {
    const msgerForm = get(".msger-inputarea");
    const msgerInput = get(".msger-input");
    const msgerChat = get(".msger-chat");

const BOT_MSGS = [
  "¡Ohh... No puedo entender lo que estás tratando de decir. ¡Lo siento!",
  "Me gusta jugar a ese juego... ¡Pero no sé cómo jugar!",
  "Lo siento no entiendo lo quieres preguntar. :))",
  "¡Tengo sueño! :("
];
const QA_PAIRS = [
  { question: "Hola", answer: "¡Hola! ¿Cómo estás?" },
  { question: "¿Cómo estás?", answer: "Estoy bien, gracias por preguntar." },
  { question: "¿Cuál es tu nombre?", answer: "Mi nombre es BOT." },
  { question: "¿Qué haces?", answer: "Estoy aquí para ayudarte y chatear contigo." },
  { question: "¿Cuál es tu color favorito?", answer: "No tengo preferencias de color, pero me gusta el azul." },
  { question: "¿Cómo puedo contactarte?", answer: "Puedes contactarme a través de este chat." },
  { question: "¿Cuántos años tienes?", answer: "No tengo edad, soy un programa de chat." },
  { question: "¿Qué puedes hacer?", answer: "Puedo responder preguntas y chatear contigo." },
  { question: "¿De dónde eres?", answer: "Soy un programa de chat, no tengo una ubicación física." },
  { question: "¿Cuál es el sentido de la vida?", answer: "La respuesta a esa pregunta es subjetiva y puede variar para cada persona." },
  { question: "¿Tienes hermanos?", answer: "No, soy un programa único." },
  { question: "¿Cuál es tu comida favorita?", answer: "No como, pero me gusta la información interesante." },
  { question: "¿Puedes ayudarme con algo?", answer: "¡Por supuesto! Estoy aquí para ayudarte en lo que pueda." },
  { question: "¿Cómo se pronuncia tu nombre?", answer: "Puedes llamarme BOT, se pronuncia como se lee." },
  { question: "¿Qué opinas sobre la inteligencia artificial?", answer: "La inteligencia artificial es fascinante y está en constante evolución." },
  { question: "¿Eres humano?", answer: "No, soy un programa de inteligencia artificial." },
  { question: "¿Puedes contarme un chiste?", answer: "¡Claro! ¿Por qué los pájaros no usan Facebook? Porque ya tienen Twitter." },
  { question: "¿Cuál es tu película favorita?", answer: "No tengo preferencias de película, pero me encanta aprender sobre nuevas películas." },
  { question: "¿Cómo aprendiste a chatear?", answer: "Fui programado para responder preguntas y chatear de manera natural." },
  { question: "¿Qué hora es?", answer: `La hora actual es ${formatDate(new Date())}.` },
  // Agrega más preguntas y respuestas según sea necesario
];

    const BOT_IMG = "/img/OIP.jpg";
    const PERSON_IMG = "/img/us4.jpg";
    const BOT_NAME = "BOT";

    if (msgerForm) {
        msgerForm.addEventListener("submit", function (event) {
            event.preventDefault();

            const msgText = msgerInput.value;
            if (!msgText) return;

            appendMessage(PERSON_NAME, PERSON_IMG, "right", msgText);
            msgerInput.value = "";

            const response = getBotResponse(msgText);
            appendMessage(BOT_NAME, BOT_IMG, "left", response);
        });
    }

    function appendMessage(name, img, side, text) {
        const msgHTML = `
            <div class="msg ${side}-msg">
                <div class="msg-img" style="background-image: url(${img})"></div>
    
                <div class="msg-bubble">
                    <div class="msg-info">
                        <div class="msg-info-name">${name}</div>
                        <div class="msg-info-time">${formatDate(new Date())}</div>
                    </div>
    
                    <div class="msg-text">${text}</div>
                </div>
            </div>
        `;

        msgerChat.insertAdjacentHTML("beforeend", msgHTML);
        msgerChat.scrollTop += 500;
    }

    function getBotResponse(userInput) {
        for (const qaPair of QA_PAIRS) {
            if (userInput.toLowerCase().includes(qaPair.question.toLowerCase())) {
                return qaPair.answer;
            }
        }
        const r = random(0, BOT_MSGS.length - 1);
        return BOT_MSGS[r];
    }

    // Resto del código...

    function get(selector, root = document) {
        return root.querySelector(selector);
    }

    function formatDate(date) {
        const h = "0" + date.getHours();
        const m = "0" + date.getMinutes();

        return `${h.slice(-2)}:${m.slice(-2)}`;
    }

    function random(min, max) {
    return Math.floor(Math.random() * (max - min) + min);
}
});